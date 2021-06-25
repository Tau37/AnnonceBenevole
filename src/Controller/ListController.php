<?php

namespace App\Controller;
use App\Repository\AnnoncesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ListController extends AbstractController
{
    /**
     * @Route("/my/account/list", name="list")
     */
    public function list(AnnoncesRepository $annoncesRepository): Response
    {
        // récupéré l'id de l'utilisateur courant
        $id_User = $this->getUser()->getId();
        //dd($user);

        if (isset($id_User) && !empty($id_User)) {
            $annonces = $annoncesRepository->findBy(["linkAnnonce" => $id_User, "valide" => "1"], ["date" => "DESC"]);

        } else {
            $id_User = null;
            return $this->redirectToRoute('home');
        }
        return $this->render('list/index.html.twig', [
            'annonces' => $annonces,
            'id_User' => $id_User,
            //'response' => $response, pour gérer les réponse plus tard
            'controller_name' => 'ListController',
        ]);
    }
}
