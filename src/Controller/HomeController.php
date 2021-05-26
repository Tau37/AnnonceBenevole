<?php

namespace App\Controller;

use App\Repository\AnnoncesRepository;
use App\Repository\CategoriesRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home", methods={"GET"})
     */
    public function index(AnnoncesRepository $annoncesRepository, CategoriesRepository $categoriesRepository): Response
    {
        $categorie = $categoriesRepository->findAll();
        //dd($categorie);
        return $this->render('home/index.html.twig', [
        'categorie' => $categorie
        ]);
    }

    /**
     * @Route("/liste/annonces", name="annonces", methods={"GET"})
     */
    public function annonce(AnnoncesRepository $annoncesRepository, CategoriesRepository $categoriesRepository): Response
    {

        // je récupére le nom des catégorie en fonction de l'id de la liaison (linkCategorie)
        if (isset($_GET["id_categorie"]) && !empty($_GET["id_categorie"])) {
            $id_categorie = $_GET["id_categorie"];
            $id_categorie = $categoriesRepository->findBy(["id"=> $id_categorie]);
            $annonces = $annoncesRepository->findBy(["linkCategorie"=> $id_categorie,"valide" => "1"],["date" => "DESC"]);
        } else {
            $id_categorie = null;
            $annonces = $annoncesRepository->findBy(["valide" => "1" ] ,["date" => "DESC"]);
        }
        //$annonces = $annoncesRepository->findAll();
        return $this->render('annonces/annonces.html.twig', [
            'annonces' => $annonces,
            'controller_name' => 'HomeController',
        ]);
    }

}
