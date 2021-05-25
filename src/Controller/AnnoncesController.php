<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Annonces;
use App\Entity\Categories;
use App\Form\AnnoncesType;
use App\Repository\AnnoncesRepository;
use App\Repository\CategoriesRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/annonces")
 */
class AnnoncesController extends AbstractController
{
    /**
     * @Route("/", name="annonces_index", methods={"GET"})
     */
    public function index(AnnoncesRepository $annoncesRepository, CategoriesRepository $categoriesRepository): Response
    {

        $annonceFindAll = $annoncesRepository->findAll();
        // je récupére le nom des catégorie en fonction de l'id de la liaison (linkCategorie)
        $tabNameCategorie = [];
        if (isset($_GET["id_categorie"]) && !empty($_GET["id_categorie"])) {
            $id_categorie = $_GET["id_categorie"];
            $id_categorie = $categoriesRepository->findBy(["id"=> $id_categorie]);
            $annonce = $annoncesRepository->findBy(["linkCategorie"=> $id_categorie]);
            //dd($annonce);
        } else {
            $id_categorie = null;
            $annonce = $annoncesRepository->findAll();
        }

        
        return $this->render('annonces/index.html.twig', [
            'annonces' =>  $annonce,
            
        ]);
    }



    /**
     * @Route("/new", name="annonces_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $annonce = new Annonces();
        $form = $this->createForm(AnnoncesType::class, $annonce);
        $form->handleRequest($request);
        if ($this->getUser() === Null) {
            return $this->redirectToRoute('app_login');
        }
        if ($form->isSubmitted() && $form->isValid()) {
            // je dois récupere l'id mon user
            $annonce->setLinkAnnonce($this->getUser());
            
            date_default_timezone_set('Europe/Paris');

            $annonce->setDate(new \DateTime('now'));
            $annonce->setValide(0); // Les annonces seront validé par l'administrateur plus tard
            
            // dd($annonce);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($annonce);
            $entityManager->flush();

            return $this->redirectToRoute('annonces_index');
        }

        return $this->render('annonces/new.html.twig', [
            'annonce' => $annonce,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="annonces_show", methods={"GET"})
     */
    public function show(Annonces $annonce, CategoriesRepository $categoriesRepository): Response
    {
        //dd($annonce);
        $categorie = $annonce->getLinkCategorie()->getCategorie();
        $nom = $annonce->getLinkAnnonce()->getNom();
        return $this->render('annonces/show.html.twig', [
            'annonce' => $annonce,
            'nom' => $nom,
            'categorie' => $categorie,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="annonces_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Annonces $annonce): Response
    {
        $form = $this->createForm(AnnoncesType::class, $annonce);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('annonces_index');
        }

        return $this->render('annonces/edit.html.twig', [
            'annonce' => $annonce,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="annonces_delete", methods={"POST"})
     */
    public function delete(Request $request, Annonces $annonce): Response
    {
        if ($this->isCsrfTokenValid('delete'.$annonce->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($annonce);
            $entityManager->flush();
        }

        return $this->redirectToRoute('annonces_index');
    }
}
