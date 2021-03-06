<?php

namespace App\Controller;

use App\Entity\Messages;
use App\Form\MessagesType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MessagesController extends AbstractController
{
    /**
     * @Route("/my/account/messages", name="messages")
     */
    public function index(): Response
    {
        return $this->render('messages/index.html.twig', [
            'controller_name' => 'MessagesController',
        ]);
    }

    /**
     * @Route("/my/account/messages/send", name="send")
     */
    public function send(Request $request): Response
    {
        $message = new Messages;
        $form = $this->createForm(MessagesType::class, $message);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $message->setSender($this->getUser());

            $em = $this->getDoctrine()->getManager();
            $em->persist($message);
            $em->flush();

            $this->addFlash("message", "Message envoyé avec succès.");
            return $this->redirectToRoute("messages");
        }

        return $this->render("messages/send.html.twig", [
            "form" => $form->createView()
        ]);
    }

    /**
     * @Route("/my/account/messages/received", name="received")
     */
    public function received(): Response
    {
        return $this->render('messages/received.html.twig');
    }


    /**
     * @Route("/my/account/messages/sent", name="sent")
     */
    public function sent(): Response
    {
        return $this->render('messages/sent.html.twig');
    }

    /**
     * @Route("/my/account/messages/read/{id}", name="read")
     */
    public function read(Messages $message): Response
    {

        if($message->getSender()->getId() !=  $this->getUser()->getId() && $message->getRecipient()->getId() !=  $this->getUser()->getId()){
          return $this->redirect($this->generateUrl('app_logout'));
        }
        $message->setIsRead(true);
        $em = $this->getDoctrine()->getManager();
        $em->persist($message);
        $em->flush();

        return $this->render('messages/read.html.twig', compact("message"));
    }

    /**
     * @Route("/my/account/messages/delete/{id}", name="delete")
     */
    public function delete(Messages $message): Response
    {

        $em = $this->getDoctrine()->getManager();
        $em->remove($message);
        $em->flush();
        if ( isset($_GET["MessageSup"])) {
          return $this->redirect($this->generateUrl('my_account'));
        }
        else {
          return $this->redirectToRoute("received");
        }

    }

}
