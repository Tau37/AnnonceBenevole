<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210519145254 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE annonces DROP FOREIGN KEY FK_CB988C6F2FC8D980');
        $this->addSql('DROP INDEX IDX_CB988C6F2FC8D980 ON annonces');
        $this->addSql('ALTER TABLE annonces CHANGE linkcategorie_id link_categorie_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE annonces ADD CONSTRAINT FK_CB988C6F4E5A67EF FOREIGN KEY (link_categorie_id) REFERENCES categories (id)');
        $this->addSql('CREATE INDEX IDX_CB988C6F4E5A67EF ON annonces (link_categorie_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE annonces DROP FOREIGN KEY FK_CB988C6F4E5A67EF');
        $this->addSql('DROP INDEX IDX_CB988C6F4E5A67EF ON annonces');
        $this->addSql('ALTER TABLE annonces CHANGE link_categorie_id linkcategorie_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE annonces ADD CONSTRAINT FK_CB988C6F2FC8D980 FOREIGN KEY (linkcategorie_id) REFERENCES categories (id)');
        $this->addSql('CREATE INDEX IDX_CB988C6F2FC8D980 ON annonces (linkcategorie_id)');
    }
}
