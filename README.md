Après avoir eu beaucoup de galères avec Postgresql et une réinstalation complete de Ubuntu (avec évidement RVM, Npm, Rails et co...), voici ENFIN mon test pour Web_atrio!
Fait en 1h40

Condition:

- Utilisateur accepté uniquement en dessous de 150 ans.
- Trié par odre alphabétique en forcant les minuscule pour que l'odre de tri ne soit pas perturbé.

Le tout crée avec un scaffold.( CRUD )

http://localhost:3000/users pour afficher tous les users. (classés par ordre alphabétique du last_name, avec leurs age affichées)
http://localhost:3000/users/new pour créer un nouveau user.
http://localhost:3000/users/show pour montrer un profil user en particulier
http://localhost:3000/users/edit pour modifié un profil user en particulier
