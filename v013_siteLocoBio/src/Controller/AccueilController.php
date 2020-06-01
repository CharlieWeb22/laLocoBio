<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Horaires;

class AccueilController extends AbstractController
{
    /**
     * @Route("/", name="accueil")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $horaires = $this->getDoctrine()->getRepository(Horaires::class)->findBy([
            'is_published' => 1],
            );

        return $this->render('accueil/accueil.html.twig', [
            'horaires' => $horaires,
        ]);
    }
}
