<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\RegistrationFormType;
use App\Security\Authenticator;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Guard\GuardAuthenticatorHandler;

class RegistrationController extends AbstractController
{
    /**
     * @Route("/register", name="app_register")
     */
    public function register(Request $request, UserPasswordEncoderInterface $passwordEncoder, GuardAuthenticatorHandler $guardHandler, Authenticator $authenticator): Response
    {
        $user = new User();
        $form = $this->createForm(RegistrationFormType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            

            $selection = $_POST['registration_form']['selection'];
            if ($selection === 'Structures'){
                $user->setRoles(["ROLE_STRUCTURE"]);
                $user->setFiness($_POST['registration_form']['finess']);
                $user->setStructure(strip_tags($_POST['registration_form']['structure']));
                if (empty($_POST['registration_form']['finess']) || $_POST['registration_form']['finess'] === null ){
                    return $this->render('registration/register.html.twig', [
                        'registrationForm' => $form->createView(),
                        'finessError' => 'Ce champ est vide !!!'
                    ]);
                }
                // correction de la condition d'erreur
                if (strlen($_POST['registration_form']['finess']) != 9 ){
                    return $this->render('registration/register.html.twig', [
                        'registrationForm' => $form->createView(),
                        'finessError' => 'Veuillez renseigner les 9 chiffres de votre N° FINESS...'
                    ]);
                }
                if (empty($_POST['registration_form']['structure']) || $_POST['registration_form']['structure'] === null ){
                    return $this->render('registration/register.html.twig', [
                        'registrationForm' => $form->createView(),
                        'structureError' => 'Ce champ est vide !!!'
                    ]);
                    
                }
            }
            // dump($user);
            // dd($_POST);
            if ($selection === 'User'){
                
                // attribuer un ROLE_USEr automatiquement
                    $user->setRoles(["ROLE_USER"]); 
            }
            // comparaison des password
            //dd($form->get("plainPassword")->getData(),$form->get("confirmPassword")->getData());
            if ($form->get("plainPassword")->getData() === $form->get("confirmPassword")->getData()) {
                // encode the plain password
                $user->setPassword(
                    $passwordEncoder->encodePassword(
                        $user,
                        $form->get('plainPassword')->getData()
                    )
                );
                
                $entityManager = $this->getDoctrine()->getManager();
                $entityManager->persist($user);
                $entityManager->flush();
                // do anything else you need here, like send an email

                return $guardHandler->authenticateUserAndHandleSuccess(
                    $user,
                    $request,
                    $authenticator,
                    'main' // firewall name in security.yaml
                );
            } else {
                return $this->render('registration/register.html.twig', [
                    'registrationForm' => $form->createView(),
                    'passError' => 'les mots de passe ne sont pas identiques'
                ]);
            }
        }

        return $this->render('registration/register.html.twig', [
            'registrationForm' => $form->createView(),
        ]);
    }
}
