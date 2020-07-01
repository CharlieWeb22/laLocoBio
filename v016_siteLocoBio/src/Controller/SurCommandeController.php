<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\Produit;

class SurCommandeController extends AbstractController
{
    /**
     * @Route("/surcommande", name="surcommande")
     */
    public function index(Request $request, PaginatorInterface $paginator)
    {
        // Méthode findBy qui permet de récupérer les données avec des critères de filtre et de tri
        $donnees = $this->getDoctrine()->getRepository(Produit::class)->findBy([
            'is_published' => 1],
            ['createdAt' => 'desc']);

        $produit = $paginator->paginate(
            $donnees, //On passe les données
            $request->query->getInt('page', 1), //Numéro de la page en cours, 1 par défaut
            9
        );

        return $this->render('surcommande/surcommande.html.twig', [
            'produit' => $produit,
        ]);
    }
}
