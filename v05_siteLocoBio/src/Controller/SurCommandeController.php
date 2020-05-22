<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class SurCommandeController extends AbstractController
{
    /**
     * @Route("/surcommande", name="surcommande")
     */
    public function index()
    {
        return $this->render('surcommande/surcommande.html.twig', [
            'controller_name' => 'SurCommandeController',
        ]);
    }
}
