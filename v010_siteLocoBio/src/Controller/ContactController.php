<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Horaires;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $horaires = $this->getDoctrine()->getRepository(Horaires::class)->findBy([
            'is_published' => 1],
            );

        return $this->render('contact/contact.html.twig', [
            'horaires' => $horaires,
        ]);
    }
}
