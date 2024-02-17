import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class StatusDetail {
  final String description;
  final String title;
  final List<StatusDetail> steps;

  const StatusDetail(this.description, this.title, [this.steps = const []]);
  const StatusDetail.draft()
      : title = "Initialisation",
        description =
            "Veuillez patienter, votre paiement est en cours d'initialisation",
        steps = const [];
  const StatusDetail.initError()
      : title = "Erreur",
        description =
            "Une érreur est survenu lors de l'initialisation du paiement",
        steps = const [];

  const StatusDetail.creditPending()
      : title = "Achat du service en cours",
        description = "Votre service est en cours d'achat",
        steps = const [StatusDetail("Nous avons réçu votre paiement", "")];

  const StatusDetail.success()
      : title = "Succès",
        description = "L'opération 'c'est terminé avec succès",
        steps = const [
          StatusDetail("Nous avons réçu votre paiement", ""),
          StatusDetail("Le service à été acheté", "")
        ];

  const StatusDetail.creditError()
      : title = "Echec de l'achat du service",
        description =
            "L'achat du service a échouer, notre support technique se chargera d'investiguer cette transaction. Veuillez contacter notre service client sur whatsapp au +237650675795",
        steps = const [
          StatusDetail("Nous avons réçu votre paiement", ""),
        ];
  const StatusDetail.debitPending()
      : title = "En attente de paiement",
        description =
            "Une demande de paiement à été envoyé vers votre numéro mobile money. Veuillez l'approuver pour continuer le processus",
        steps = const [
        ];
  const StatusDetail.debitError()
      : title = "Echec du paiement",
        description =
            "Le paiement à échoué, veuillez vérifier votre solde ou retentez ultérieurement",
        steps = const [];
}

enum PaymentStatusEnum {
  @JsonValue("draft")
  draft,
  @JsonValue("creditPending")
  creditPending,
  @JsonValue("creditError")
  creditError,
  @JsonValue("initError")
  initError,
  @JsonValue("success")
  success,
  @JsonValue("debitPending")
  debitPending,
  @JsonValue("debitError")
  debitError,
}

extension PaymentStatusEnumExtension on PaymentStatusEnum {
  bool get isPending {
    switch (this) {
      case PaymentStatusEnum.creditPending:
      case PaymentStatusEnum.debitPending:
      case PaymentStatusEnum.draft:
        return true;
      default:
        return false;
    }
  }

  bool get isError {
    switch (this) {
      case PaymentStatusEnum.initError:
      case PaymentStatusEnum.creditError:
      case PaymentStatusEnum.debitError:
        return true;
      default:
        return false;
    }
  }

  bool get isSuccessful {
    switch (this) {
      case PaymentStatusEnum.success:
        return true;
      default:
        return false;
    }
  }

  Color get color {
    switch (this) {
      case PaymentStatusEnum.creditPending:
      case PaymentStatusEnum.debitPending:
      case PaymentStatusEnum.draft:
        return Colors.orange;
      case PaymentStatusEnum.initError:
      case PaymentStatusEnum.debitError:
      case PaymentStatusEnum.creditError:
        return Colors.red;
      case PaymentStatusEnum.success:
        return Colors.green;
    }
  }

  Widget get icon {
    switch (this) {
      case PaymentStatusEnum.creditPending:
      case PaymentStatusEnum.debitPending:
      case PaymentStatusEnum.draft:
        return const SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(
            color: Colors.orange,
          ),
        );
      case PaymentStatusEnum.initError:
      case PaymentStatusEnum.debitError:
      case PaymentStatusEnum.creditError:
        return const Icon(
          Icons.error_sharp,
          color: Colors.red,
        );
      case PaymentStatusEnum.success:
        return const Icon(
          Icons.check_box,
          color: Colors.green,
        );
    }
  }

  StatusDetail get detail {
    switch (this) {
      case PaymentStatusEnum.creditPending:
        return const StatusDetail.creditPending();
      case PaymentStatusEnum.debitPending:
        return const StatusDetail.debitPending();
      case PaymentStatusEnum.draft:
        return const StatusDetail.draft();
      case PaymentStatusEnum.initError:
        return const StatusDetail.initError();
      case PaymentStatusEnum.debitError:
        return const StatusDetail.debitError();
      case PaymentStatusEnum.creditError:
        return const StatusDetail.creditError();
      case PaymentStatusEnum.success:
        return const StatusDetail.success();
    }
  }
}
