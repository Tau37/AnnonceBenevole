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
    public function annonce(AnnoncesRepository $annoncesRepository): Response
    {
        $annonces = $annoncesRepository->findAll();
        return $this->render('annonces/annonces.html.twig', [
            'annonces' => $annonces,
            'controller_name' => 'HomeController',
        ]);
    }

}
