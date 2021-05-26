<?php

namespace App\Controller;

use Gumlet\ImageResize;
use App\Entity\Categories;
use App\Form\CategoriesType;
use App\Repository\CategoriesRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/categories")
 */
class CategoriesController extends AbstractController
{
    /**
     * @Route("/", name="categories_index", methods={"GET"})
     */
    public function index(CategoriesRepository $categoriesRepository): Response
    {
        return $this->render('categories/index.html.twig', [
            'categories' => $categoriesRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="categories_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $category = new Categories();
        $form = $this->createForm(CategoriesType::class, $category);
        $form->handleRequest($request);
        $public = $this->getParameter('kernel.project_dir').'/public/';
        $imgOK  = false;

        
        if ($form->isSubmitted() && $form->isValid()) {
            
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($category);
            $entityManager->flush();
            
            if(!empty($_FILES['categories']) && isset($_FILES['categories'])){
                
                $files = $_FILES['categories'];
                dump($files['tmp_name']['avatar']);
               
                // test des différents types d'erreur (type,size,error) qui peuvent êtres fait séparement
                if ($files['type']['avatar'] === 'image/jpeg' || $files['type']['avatar'] === 'image/jpg' || $files['type']['avatar'] === 'image/gif' || $files['type']['avatar'] === 'image/png' || $files['type']['avatar'] === 'image/webp') {
                    
                    $tmpImg = $public."assets/img/upload/".$files['name']['avatar'];
                    move_uploaded_file($files['tmp_name']['avatar'],$tmpImg);  
                    
                    $idCategorie = $category->getId();
                    //ImageResize
                    $avatar = new ImageResize($tmpImg);
                    // $avatar->resizeToWidth(400);
                    $avatar->save($public."assets/img/categorie/".$idCategorie.".jpg",IMAGETYPE_JPEG);
                    $avatarth = new ImageResize($tmpImg); 
                    //$avatarth->resizeToWidth(80);
                    //$avatarth->save($public."assets/images/users/thumbnail/".$idCategorie.".webp",IMAGETYPE_WEBP);
                    // unlink je supprime l'image d'origine
                    unlink($tmpImg);

                } 
            }


            return $this->redirectToRoute('categories_index');
        }

        return $this->render('categories/new.html.twig', [
            'category' => $category,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="categories_show", methods={"GET"})
     */
    public function show(Categories $category): Response
    {
        return $this->render('categories/show.html.twig', [
            'category' => $category,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="categories_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Categories $category): Response
    {
        $form = $this->createForm(CategoriesType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('categories_index');
        }

        return $this->render('categories/edit.html.twig', [
            'category' => $category,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="categories_delete", methods={"POST"})
     */
    public function delete(Request $request, Categories $category): Response
    {
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($category);
            $entityManager->flush();
        }

        return $this->redirectToRoute('categories_index');
    }
}
