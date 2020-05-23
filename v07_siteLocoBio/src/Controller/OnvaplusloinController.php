<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class OnvaplusloinController extends AbstractController
{
    /**
     * @Route("/onvaplusloin", name="onvaplusloin")
     */
    public function index()
    {
        return $this->render('onvaplusloin/onvaplusloin.html.twig', [
            'controller_name' => 'OnvaplusloinController',
        ]);
    }
}
