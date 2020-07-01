<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
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
    public function index(Request $request, PaginatorInterface $paginator)
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $donnees = $this->getDoctrine()->getRepository(ArticleOnvaplusloin::class)->findBy([
            'is_published' => 1],
            ['createdAt' => 'desc']);
        
        $articleonvaplusloin = $paginator->paginate(
            $donnees, //On passe les données
            $request->query->getInt('page', 1), //Numéro de la page en cours, 1 par défaut
            6
        );
    

        return $this->render('onvaplusloin/onvaplusloin.html.twig', [
            'articleonvaplusloin' => $articleonvaplusloin,
        ]);
    }

     /**
     * @Route("/{slug}", name="article_show")
     */
    public function show($slug)
    {
        $article = $this->getDoctrine()->getRepository(ArticleOnvaplusloin::class)->findOneBy(['slug' => $slug]);
        if(!$article){

            throw $this->createNotFoundException('L\'article n\'existe pas');
        }
        return $this->render('onvaplusloin/show.html.twig', compact('article'));
    }

}
