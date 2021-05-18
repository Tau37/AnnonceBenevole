<?php

namespace App\Controller;

use App\Repository\AnnoncesRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home", methods={"GET"})
     */
    public function index(AnnoncesRepository $annoncesRepository): Response
    {
        $annonces = $annoncesRepository->findAll();
        
        return $this->render('home/index.html.twig', [
            'annonces' => $annonces,
            'controller_name' => 'HomeController',
        ]);
    }

}
