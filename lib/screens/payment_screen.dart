import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/payment/payment_cubit.dart';
import 'package:fleet_consumer/backend/forms/inputs/amount_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/destination_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/momo_number_input.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
import 'package:formz/formz.dart';
import 'package:objectbox/objectbox.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget implements AutoRouteWrapper {
  final Product product;
  final Service service;

  const PaymentScreen(this.product, this.service, {super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (ctx) => PaymentCubit(
              context.read<ApiService>(),
              context.read<Store>(),
              service,
              product,
            ),
        child: this);
  }
}

class _PaymentScreenState extends State<PaymentScreen> {
  final FlutterContactPicker _contactPicker = FlutterContactPicker();
  TextEditingController destinationInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(listener: (context, state) {
      if (state.status.isFailure) {
        showErrorDialog(context, "Une érreur est survenu");
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
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (state.status.isInProgress) const LinearProgressIndicator(),
            TextFormField(
              onChanged: (v) {
                context.read<PaymentCubit>().onDestinationChanged(v);
              },
              keyboardType: TextInputType.number,
              controller: destinationInputController,
              decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: () async {
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
                      },
                      icon: const Icon(Icons.contacts_sharp)),
                  errorText: state.form.destinationInput.displayError
                      ?.message(context),
                  label: Text(widget.service.formInputLabel),
                  helperText: widget.service.formInputPlaceholder),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Builder(builder: (context) {
                if (!widget.product.fixedPrice) {
                  return TextFormField(
                    onChanged: (v) {
                      if (v.isEmpty) return;
                      int? amount = int.tryParse(v);
                      if (amount != null) {
                        context.read<PaymentCubit>().onAmountChanged(amount);
                      }
                    },
                    initialValue: state.form.amountInput.value.toString(),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        errorText: state.form.amountInput.displayError
                            ?.message(context),
                        label: const Text('Montant'),
                        helperText:
                            "Entre ${formatAmount(widget.service.minAmount!)} et ${formatAmount(widget.service.maxAmount!)}"),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text("Montant"),
                    leading: Image.network(widget.service.image),
                    subtitle: Text(formatAmount(widget.product.price!)),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Builder(builder: (context) {
                  switch (state.form.momoNumberInput.guessType()) {
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
                title: TextFormField(
                  initialValue: state.form.momoNumberInput.value.toString(),
                  onChanged: (v) {
                    context.read<PaymentCubit>().onMomoNumberChanged(v);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      errorText: state.form.momoNumberInput.displayError
                          ?.message(context),
                      label: const Text("Numéro MTN ou Orange"),
                      helperText: "Entrez votre numéro mobile money"),
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: state.form.isValid &&
                        !state.form.isPure &&
                        !state.status.isInProgress
                    ? () {
                        context.read<PaymentCubit>().submit();
                      }
                    : null,
                icon: const Icon(Icons.send),
                label: const Text("Continuer"))
          ],
        ),
      );
    });
  }
}
