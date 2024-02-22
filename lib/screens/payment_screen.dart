import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/payment/payment_cubit.dart';
import 'package:fleet_consumer/backend/forms/inputs/amount_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/destination_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/momo_number_input.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/fleet_consumer_app.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/widgets/dialogs.dart';
import 'package:fleet_consumer/widgets/service_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
import 'package:formz/formz.dart';
import 'package:objectbox/objectbox.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget implements AutoRouteWrapper {
  final Product product;
  final Service service;
  final String? destination;
  final String? momoPhoneNumber;
  final int? amount;

  const PaymentScreen(this.product, this.service,
      {super.key, this.destination, this.momoPhoneNumber, this.amount});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (ctx) {
          var cubit = PaymentCubit(context.read<ApiService>(),
              context.read<Store>(), service, product);
          if (destination != null) {
            cubit.onDestinationChanged(destination!);
          }
          if (momoPhoneNumber != null) {
            cubit.onMomoNumberChanged(momoPhoneNumber!);
          }
          if (amount != null) {
            cubit.onAmountChanged(amount!);
          }
          return cubit;
        },
        child: this);
  }
}

class _PaymentScreenState extends State<PaymentScreen> {
  final FlutterContactPicker _contactPicker = FlutterContactPicker();
  TextEditingController destinationInputController = TextEditingController();
  @override
  void initState() {
    super.initState();
    destinationInputController.text =
        context.read<PaymentCubit>().state.form.destinationInput.value;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(listener: (context, state) {
      if (state.status.isFailure) {
        showErrorDialog(context, l(context).anErrorOccured);
        return;
      }
      if (state.status.isSuccess) {
        context.pushRoute(StatusRoute(payment: state.payment));
        return;
      }
    }, builder: (context, state) {
      PaymentCubit cubit = context.read<PaymentCubit>();
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.product.name),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: Container(
                decoration:
                    const BoxDecoration(color: FleetConsumerApp.primaryColor),
              )),
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: FleetConsumerApp.primaryColor,
                height: 100,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16).copyWith(top: 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(16)),
              child: ListView(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                children: [
                  if (state.status.isInProgress)
                    const LinearProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Builder(builder: (context) {
                      if (!widget.product.fixedPrice) {
                        return _TextField(
                          onChanged: (v) {
                            if (v.isEmpty) return;
                            int? amount = int.tryParse(v);
                            if (amount != null) {
                              context
                                  .read<PaymentCubit>()
                                  .onAmountChanged(amount);
                            }
                          },
                          initialValue: state.form.amountInput.value.toString(),
                          keyboardType: TextInputType.number,
                          errorText: state.form.amountInput.displayError
                              ?.message(context),
                          label: Text(l(context).amount),
                          helperText: l(context).betwen_and_(
                              formatAmount(widget.service.minAmount!),
                              formatAmount(widget.service.maxAmount!)),
                        );
                      }
                      return Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: ProductInfo(widget: widget));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: _TextField(
                              onChanged: (v) {
                                context
                                    .read<PaymentCubit>()
                                    .onDestinationChanged(v);
                              },
                              errorText: state
                                  .form.destinationInput.displayError
                                  ?.message(context),
                              controller: destinationInputController,
                              label: Text(widget.service.formInputLabel),
                              helperText: widget.service.formInputPlaceholder),
                        ),
                        TextButton.icon(
                            onPressed: () => _pickContact(cubit),
                            icon: const Icon(Icons.person),
                            label: Text(l(context).contactList))
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 24.0, top: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 22.0),
                              child: ClipOval(
                                child: Builder(builder: (context) {
                                  switch (
                                      state.form.momoNumberInput.guessType()) {
                                    case MomoNumberType.mtn:
                                      return Image.asset(
                                        "assets/images/mtn.png",
                                        width: 50,
                                        height: 50,
                                      );
                                    case MomoNumberType.om:
                                      return Image.asset(
                                        "assets/images/om.png",
                                        width: 50,
                                        height: 50,
                                      );
                                    default:
                                      return Container(
                                        color: Colors.grey,
                                        width: 50,
                                        height: 50,
                                      );
                                  }
                                }),
                              ),
                            ),
                          ),
                          Expanded(
                            child: _TextField(
                                initialValue:
                                    state.form.momoNumberInput.value.toString(),
                                onChanged: (v) {
                                  context
                                      .read<PaymentCubit>()
                                      .onMomoNumberChanged(v);
                                },
                                keyboardType: TextInputType.number,
                                errorText: state
                                    .form.momoNumberInput.displayError
                                    ?.message(context),
                                label: Text(
                                    l(context).mtnOrOrangeMobileMoneyNumber),
                                helperText: l(context).enterYourMomoNumber),
                          ),
                        ],
                      )),
                  ElevatedButton.icon(
                      onPressed: state.form.isValid &&
                              !state.form.isPure &&
                              !state.status.isInProgress
                          ? () {
                              context.read<PaymentCubit>().submit();
                            }
                          : null,
                      icon: const Icon(Icons.send),
                      label: Text(l(context).pay))
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  _pickContact(PaymentCubit cubit) async {
    Contact? contact = await _contactPicker.selectContact();
    String? phoneNumber = contact?.phoneNumbers?.first;
    if (phoneNumber == null) {
      return;
    }
    phoneNumber = phoneNumber
        .replaceAll(" ", "")
        .replaceAll("-", "")
        .replaceAll("(", "")
        .replaceAll(")", "");
    if (phoneNumber.startsWith("+")) {
      phoneNumber = phoneNumber.substring(1);
    }
    if (phoneNumber.startsWith("237")) {
      phoneNumber = phoneNumber.substring(3);
    }
    destinationInputController.text = phoneNumber;
    cubit.onDestinationChanged(phoneNumber);
  }
}

class _TextField extends StatelessWidget {
  const _TextField({
    this.controller,
    this.suffix,
    this.errorText,
    this.helperText,
    this.keyboardType,
    this.initialValue,
    this.label,
    required this.onChanged,
  });

  final Widget? suffix;
  final Widget? label;
  final String? errorText;
  final String? helperText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: FleetConsumerApp.primaryColor.withOpacity(0.03),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300)),
            suffix: suffix,
            errorText: errorText,
            label: label,
            helperText: helperText),
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.widget,
  });

  final PaymentScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: ServiceImage(imageUrl: widget.service.image),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(widget.product.name),
                ),
                Text(widget.product.description),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(formatAmount(widget.product.price!)),
            ),
            InkWell(
              onTap: () {
                context.popRoute();
              },
              child: Text(
                l(context).change,
                style: const TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
