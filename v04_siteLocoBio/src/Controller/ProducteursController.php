<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ProducteursController extends AbstractController
{
    /**
     * @Route("/producteurs", name="producteurs")
     */
    public function index()
    {
        return $this->render('producteurs/producteurs.html.twig', [
            'controller_name' => 'ProducteursController',
        ]);
    }
}
