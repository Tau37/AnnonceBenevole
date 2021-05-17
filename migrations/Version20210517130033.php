<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210517130033 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE annonces ADD link_annonce_id INT NOT NULL');
        $this->addSql('ALTER TABLE annonces ADD CONSTRAINT FK_CB988C6FDF8F6BDA FOREIGN KEY (link_annonce_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_CB988C6FDF8F6BDA ON annonces (link_annonce_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE annonces DROP FOREIGN KEY FK_CB988C6FDF8F6BDA');
        $this->addSql('DROP INDEX IDX_CB988C6FDF8F6BDA ON annonces');
        $this->addSql('ALTER TABLE annonces DROP link_annonce_id');
    }
}