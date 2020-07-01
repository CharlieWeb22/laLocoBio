<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
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
    public function index(Request $request, PaginatorInterface $paginator)
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $donnees = $this->getDoctrine()->getRepository(ArticleRdvdumois::class)->findBy([
             'is_published' => 1],
             ['createdAt' => 'desc']);
        
        $articlerdvdumois = $paginator->paginate(
            $donnees, //On passe les données
            $request->query->getInt('page', 1), //Numéro de la page en cours, 1 par défaut
            6
        );

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

