<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\ArticleRdvdumois;

/**
 * Class ArticleRdvmoisController
 * @package App\Controller
 * @Route("/lerendezvousdumois", name="rdvdumois_")
 */

class RdvdumoisController extends AbstractController
{
    /**
     * @Route("/", name="article")
     */
    public function index()
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $articlerdvdumois = $this->getDoctrine()->getRepository(ArticleRdvdumois::class)->findBy([
             'is_published' => 1],
             ['createdAt' => 'desc']);
        

        return $this->render('rdvdumois/rdvdumois.html.twig', [
            'articlerdvdumois' => $articlerdvdumois,
        ]);
    }

     /**
     * @Route("/{slug}", name="article_show", methods={"GET"})
     */
    public function show($slug)
    {
        $article = $this->getDoctrine()->getRepository(ArticleRdvdumois::class)->findOneBy(['slug' => $slug]);
        if(!$article){

            throw $this->createNotFoundException('L\'article n\'existe pas');
        }
        return $this->render('rdvdumois/show.html.twig', compact('article'));
    }
}

