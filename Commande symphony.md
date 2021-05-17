# composer create-project symfony/website-skeleton playboy2000       
# ctrl + c pour close une commande
# 1 créer un projet
composer create-project symfony/website-skeleton playboy2000    
# 2 Modify your DATABASE_URL config in .env poru faire le lien de la bdd exemple DATABASE_URL="mysql://root:@127.0.0.1:3306/playboy2000?serverVersion=5.7.31" à la ligne 31 de .env
crée la database
php bin/console doctrine:database:create
# 3 besoin d'apache
composer require symfony/apache-pack
# 4 créer un controler
php bin/console make:controller 
# 5 lancer le serveur locahost symfony
symfony serve 
# 6 créer une table on peut utiliser ? pour avoir des infos createdAt prendra les date auto faire enterer prend les valeurs en [jaune]
php bin/console make:entity
# 7 changer une table
changer dans public/entity/name_entity
ou rappeller la même entity
# 8 pour écrire la table dans la bdd
php bin/console make:migration
 Next: Review the new migration "migrations/Version20210430090948.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
# 9 composer le --dev est très important pour 
composer require --dev orm-fixtures 
# 10 créer une table User
php bin/console make:user
# 11 créer une table  auth faire 1 à la première question
php bin/console make:auth
# 12 créer un crud (create read update delete)
php bin/console make:crud

# 13 pour écrire la table dans la bdd 2éme fois
php bin/console make:migration
Next: Review the new migration "migrations/Version20210430095324.php"
 Then: Run the migration with php bin/console doctrine:migrations:migrate
pour forcer il faut ajouter --force
 # on peux aussi avoir les infos de make en faisant php bin/console make

 # 14 créer un formulaire d'enregistrement
 php bin/console make:registration-form

 # composer require symfonycasts/verify-email-bundle pour la gestion des email

php -S locahost:8000 -t public

# création de BDD 
php bin/console doctrine:database:create
# liste des php bin/console
php bin/console

# on appele la fonction avec :" php bin/console doctrine:fixtures:load
# pour" dans le powershell 

## fixtures

 composer require --dev orm-fixtures

## faker
 composer require --dev fzaninotto/faker