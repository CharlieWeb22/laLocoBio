<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\ArticleOnvaplusloin;

/**
 * Class ArticleOnvaplusloinController
 * @package App\Controller
 * @Route("/onvaplusloin", name="onvaplusloin_")
 */

class OnvaplusloinController extends AbstractController
{
    /**
     * @Route("/", name="article")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $articleonvaplusloin = $this->getDoctrine()->getRepository(ArticleOnvaplusloin::class)->findBy([
            'is_published' => 1],
            ['createdAt' => 'desc']);

        return $this->render('onvaplusloin/onvaplusloin.html.twig', [
            'articleonvaplusloin' => $articleonvaplusloin,
        ]);
    }

     /**
     * @Route("/{id}", name="article_show", methods={"GET"})
     */
    public function show(ArticleOnvaplusloin $articles): Response
    {
        return $this->render('onvaplusloin/show.html.twig', [
            'articles' => $articles,
        ]);
    }

}
