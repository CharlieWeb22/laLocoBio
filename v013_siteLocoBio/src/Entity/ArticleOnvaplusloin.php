<?php

namespace App\Entity;

use App\Repository\ArticleOnvaplusloinRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Gedmo\Mapping\Annotation as Gedmo;

/**
 * @ORM\Entity(repositoryClass=ArticleOnvaplusloinRepository::class)
 * @Vich\Uploadable
 */
class ArticleOnvaplusloin
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $titre;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $chapeau;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     * @var string
     */
    private $image_onvaplusloin;

    /**
     * @Vich\UploadableField(mapping="image_onvaplusloin", fileNameProperty="image_onvaplusloin")
     * @var File
     */
    private $imageFile;

    /**
     * @Gedmo\Slug(fields={"titre"})
     * @ORM\Column(length=128, unique=true)
     */
    private $slug;

    /**
     * @ORM\Column(type="text")
     */
    private $contenu;

    /**
     * @var \DateTime $updatedAt
     * 
     * @Gedmo\Timestampable(on="update")
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $auteur;

    /**
     * @var \DateTime $createdAt
     * 
     * @Gedmo\Timestampable(on="create")
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\Column(type="boolean")
     */
    private $is_published = true;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getChapeau(): ?string
    {
        return $this->chapeau;
    }

    public function setChapeau(?string $chapeau): self
    {
        $this->chapeau = $chapeau;

        return $this;
    }

    public function getImageOnvaplusloin(): ?string
    {
        return $this->image_onvaplusloin;
    }

    public function setImageOnvaplusloin(?string $image_onvaplusloin): self
    {
        $this->image_onvaplusloin = $image_onvaplusloin;

        return $this;
    }

    public function setImageFile(File $image = null)
    {
    $this->imageFile = $image;

    if ($image) {
        $this->updatedAt = new \DateTime('now');
    }
    }

    public function getImageFile()
    {
        return $this->imageFile;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function getContenu(): ?string
    {
        return $this->contenu;
    }

    public function setContenu(string $contenu): self
    {
        $this->contenu = $contenu;

        return $this;
    }


    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function getAuteur(): ?string
    {
        return $this->auteur;
    }

    public function setAuteur(string $auteur): self
    {
        $this->auteur = $auteur;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function getIsPublished(): ?bool
    {
        return $this->is_published;
    }

    public function setIsPublished(bool $is_published): self
    {
        $this->is_published = $is_published;

        return $this;
    }
}
