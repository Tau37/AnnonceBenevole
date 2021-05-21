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
        foreach ($annonceFindAll as $key => $value) {
            $idCategorieAnnonce = $annonceFindAll[$key]->getLinkCategorie()->getId();
            $nameCategorie[$key] = $categoriesRepository->findBy(["id"=> $idCategorieAnnonce]);
            dump($nameCategorie[$key][0]->getcategorie());
            $tabNameCategorie[$key] = $nameCategorie[$key][0]->getcategorie();
        }
        
        dump($tabNameCategorie);
        $annonce = $annonceFindAll;
        //dd($annonce);
        //dd($tabNameCategorie);



        
        return $this->render('annonces/index.html.twig', [
            'annonces' =>  $annonce,
            'categorie' => $tabNameCategorie,
            
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
    public function show(Annonces $annonce): Response
    {
        return $this->render('annonces/show.html.twig', [
            'annonce' => $annonce,
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
