<?php

namespace App\Form;

use App\Entity\Annonces;
use App\Entity\Categories;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class AnnoncesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('annonces')
            //->add('date') 
            ->add('description')
            ->add('valide')
            //->add('linkAnnonce') impossible de lire la liaison dans le crud de toute manière elle ne doit pas être modifiable
            ->add('linkCategorie', EntityType::class,array(
                'class'=>Categories::class,
                'choice_label'=>'categorie',
                'expanded'=>false,
                'multiple'=>false
            ))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Annonces::class,
        ]);
    }
}
