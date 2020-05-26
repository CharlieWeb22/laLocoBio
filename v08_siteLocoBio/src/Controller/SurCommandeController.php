<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Produit;

class SurCommandeController extends AbstractController
{
    /**
     * @Route("/surcommande", name="surcommande")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $produit = $this->getDoctrine()->getRepository(Produit::class)->findBy([],['createdAt' => 'desc']);

        return $this->render('surcommande/surcommande.html.twig', [
            'produit' => $produit,
        ]);
    }
}
