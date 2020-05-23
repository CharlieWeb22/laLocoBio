<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class RdvdumoisController extends AbstractController
{
    /**
     * @Route("/rdvdumois", name="rdvdumois")
     */
    public function index()
    {
        return $this->render('rdvdumois/rdvdumois.html.twig', [
            'controller_name' => 'RdvdumoisController',
        ]);
    }
}
