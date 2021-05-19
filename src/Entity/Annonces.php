<?php

namespace App\Entity;

use App\Entity\Categories;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\AnnoncesRepository;

/**
 * @ORM\Entity(repositoryClass=AnnoncesRepository::class)
 */
class Annonces
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $annonces;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="boolean")
     */
    private $valide;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="annonces")
     * @ORM\JoinColumn(nullable=false)
     */
    private $linkAnnonce;

    /**
     * @ORM\ManyToOne(targetEntity=Categories::class, inversedBy="annonces")
     */
    private $linkCategorie;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAnnonces(): ?string
    {
        return $this->annonces;
    }

    public function setAnnonces(string $annonces): self
    {
        $this->annonces = $annonces;

        return $this;
    }

    public function getDate(): ?\DateTimeInterface
    {
        return $this->date;
    }

    public function setDate(\DateTimeInterface $date): self
    {
        $this->date = $date;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getValide(): ?bool
    {
        return $this->valide;
    }

    public function setValide(bool $valide): self
    {
        $this->valide = $valide;

        return $this;
    }

    public function getLinkAnnonce(): ?User
    {
        return $this->linkAnnonce;
    }

    public function setLinkAnnonce(?User $linkAnnonce): self
    {
        $this->linkAnnonce = $linkAnnonce;

        return $this;
    }

    public function getLinkCategorie(): ?Categories
    {
        return $this->linkCategorie;
    }

    public function setLinkCategorie(?Categories $linkCategorie): self
    {
        $this->linkCategorie = $linkCategorie;

        return $this;
    }
}
