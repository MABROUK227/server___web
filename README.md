# server___web

Étape 1 : Implémenter la base de données
Importez le fichier ecom.sql situé dans le dossier racine du projet dans votre outil de gestion de base de données (comme phpMyAdmin).
Ouvrez phpMyAdmin.
Créez une base de données (par exemple ecommerce).
Importez le fichier SQL :
Cliquez sur Importer.
Sélectionnez ecom.sql.
Validez.
Étape 2 : Configurer la connexion à la base de données
Modifiez les paramètres de connexion à la base de données dans le fichier suivant :
C:\wamp62\www\Ecommerce-website-main\app\core\config.php

define('DB_HOST', 'localhost'); define('DB_NAME', 'ecommerce'); define('DB_USER', 'votre_nom_utilisateur'); define('DB_PASS', 'votre_mot_de_passe');

Étape 3 : Lancer le serveur
Démarrez votre serveur local (WAMP, XAMPP, MAMP, etc.). Accédez au fichier public via l'URL suivante : bash Copier le code