🤝 Satisfaction Client

Dans le cadre de mon activité professionnelle en gestion immobilière, j'ai développé un outil permettant de solliciter nos clients de manière automatique et récurrente afin d'obtenir des avis sur Google.

Pour cela, j'ai créé une application Rails avec une base de données SQLite pour gérer les différents clients et les profils utilisateur. Le front-end a été réalisé avec Tailwind. L'objectif de ce projet était d'utiliser Tailwind, Action Mailer, et Cron pour la première fois.

⚙️ Fonctionnalités

- Page de connexion :
  - Possibilité de connexion uniquement pour les utilisateurs configurés en amont.

<img width="1275" alt="Page de connexion" src="https://github.com/MendosDV/customer-satisfaction/assets/130302103/5a01a8d0-b1bd-40cc-b1fb-e43909a76296">

- Dashboard :
  - Affiche les 3 dernières relances avec la date à laquelle elles ont été effectuées.
  - Affiche les 3 prochaines relances avec la date à laquelle elles seront effectuées automatiquement grâce à l'utilisation de CRON pour automatiser l'envoi de mails (à l'aide de Action Mailer).
  - Affiche le nombre de relances au cours des 30 derniers jours.
  - Affiche l'ensemble des clients présents en base avec la possibilité de les trier et de rechercher par nom.

<img width="1126" alt="Dashboard" src="https://github.com/MendosDV/customer-satisfaction/assets/130302103/d506ff83-b0c8-498c-a420-d1fe50ab37c6">
 
- CRUD complet :
<img width="630" alt="Créer un client" src="https://github.com/MendosDV/customer-satisfaction/assets/130302103/d8a65464-de68-46d4-b3e1-a3469b74dec0">
<img width="616" alt="Descriptif client" src="https://github.com/MendosDV/customer-satisfaction/assets/130302103/18ef8745-65e0-420c-b2e9-0dda79f67ede">

👨‍💻 Technologies utilisées
- Ruby
- SQLite
- Tailwind
