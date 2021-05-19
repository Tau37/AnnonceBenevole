<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210519144256 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE annonces (id INT AUTO_INCREMENT NOT NULL, link_annonce_id INT NOT NULL, linkcategorie_id INT DEFAULT NULL, annonces VARCHAR(255) NOT NULL, date DATETIME NOT NULL, description LONGTEXT NOT NULL, valide TINYINT(1) NOT NULL, INDEX IDX_CB988C6FDF8F6BDA (link_annonce_id), INDEX IDX_CB988C6F2FC8D980 (linkcategorie_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE categories (id INT AUTO_INCREMENT NOT NULL, categorie VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE annonces ADD CONSTRAINT FK_CB988C6FDF8F6BDA FOREIGN KEY (link_annonce_id) REFERENCES user (id)');
        $this->addSql('ALTER TABLE annonces ADD CONSTRAINT FK_CB988C6F2FC8D980 FOREIGN KEY (linkcategorie_id) REFERENCES categories (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE annonces DROP FOREIGN KEY FK_CB988C6F2FC8D980');
        $this->addSql('DROP TABLE annonces');
        $this->addSql('DROP TABLE categories');
    }
}
