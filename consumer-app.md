# SCRUM-6: Authentification Client mobile
L'objectif est de mettre en place un mecanisme d'authentification et de recolte de données en arriere plan dans l'application mobile deja existante.

## Plan d'attaque
- Définir le modele des données qui doivent etre collectée et transférée pour l'authentification (`lib/backend/models/analytics.dart`)
- Rajouter dans les configs `lib/config.dart` et ajouter la clé utilisée pour les 
- Ecrire dans `lib/backend/services/api_service.dart` le code de l'authentification (creer une nouvelle session)
    > Faire une requette avec les données utiles vers l'API, et stocker le token dans l'application (shared_preferencess)
- Ecrire une fonction qui collecte et envoies les données utilisateur
    > Si la reponse à cette requette est un 401 ou un 403 alors rappeler l'authentification, avant de se rappeler soit meme.
- Ecrire un intercepteur de requettes HTTP qui gerera:
  - L'ajout du header aux requettes, (intercepteur pour les requettes sortantes)
  - La re-Authentification / le rafraichissement de session (Requettes entrantes). Il se base sur la clé `X-CLIENT-SESSION-ACTION` de l'en-tete de la reponse de chaque requete.


## Synthese
- A l'ouverture de l'application, 
  - on verifie s'il y a un token stocké, s'il n'y en a pas, on appelle le service d'api pour l'authentification (creation d'une session)
  - On appelle le service de collecte de données qui recolte ceux ci et les envoie à l'api 
- Lors de la sortie de chaque requette, on passe par l'interpteur de requettes qui s'assure qu'on est authentifié et ajoute le token de session via la clé **`X-CLIENT-SESSION`** qu'il ajoute dans l'en-tete de la requette
- Lors de la reponse à une requette (de paiement) on appelle l'intercepteur de reponse pour savoir s'il faut refaire l'authentification.

## Besoins
- Liste des données à recolter
- Forme des données à envoyer (collecte des données) à l'API
- Forme de la requette pour l'authentification
- liste des endpoints (auth, sendAnalytics)
- BaseURL de l'API et la version demo pour les tests
- Documentation de l'API (Si possible)

# nom de branche
`feature/SCRUM-6/authentification-client-mobile`