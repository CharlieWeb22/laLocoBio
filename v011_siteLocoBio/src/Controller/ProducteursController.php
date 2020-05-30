<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Producteur;
use App\Entity\ProducteurRegion;
use App\Entity\ProducteurDirect;

class ProducteursController extends AbstractController
{
    /**
     * @Route("/producteurs", name="producteurs")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $producteurs = $this->getDoctrine()->getRepository(Producteur::class)->findBy([],['createdAt' => 'desc']);

        $producteurRegion = $this->getDoctrine()->getRepository(ProducteurRegion::class)->findBy([],['createdAt' => 'desc']);

        $producteurDirect = $this->getDoctrine()->getRepository(ProducteurDirect::class)->findBy([],['createdAt' => 'desc']);

        return $this->render('producteurs/producteurs.html.twig', [
            'producteurs' => $producteurs,
            'producteurRegion' => $producteurRegion,
            'producteurDirect' => $producteurDirect,
        ]);

    }
}