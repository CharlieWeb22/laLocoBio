<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\ArticleRdvdumois;

/**
 * Class ArticleRdvmoisController
 * @package App\Controller
 * @Route("/rdvdumois", name="rdvdumois_")
 */

class RdvdumoisController extends AbstractController
{
    /**
     * @Route("/", name="article")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $articlerdvdumois = $this->getDoctrine()->getRepository(ArticleRdvdumois::class)->findBy([],['createdAt' => 'desc']);

        return $this->render('rdvdumois/rdvdumois.html.twig', [
            'articlerdvdumois' => $articlerdvdumois,
        ]);
    }

     /**
     * @Route("/{id}", name="article_show", methods={"GET"})
     */
    public function show(ArticleRdvdumois $article): Response
    {
        return $this->render('rdvdumois/show.html.twig', [
            'article' => $article,
        ]);
    }
}

