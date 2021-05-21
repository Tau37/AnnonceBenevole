$(document).ready(function() { // charge le DOM avant d'executer le script à l'intérieur de la function


    let tableauImage = Array("assets/img/bricolage.jpg", "assets/img/cuisine.jpg", "assets/img/jardinage.jpg", "assets/img/music.jpeg" , "assets/img/promenade.jpg", "assets/img/sport.jpeg", "assets/img/artplast.png"); // tableauImag=[]
    let i = 0
    $(".photo").click(function() {
        

        if (i < tableauImage.length) {
          
            $("#Carrouselimg").attr("src", tableauImage[i])
            
            i++
            console.log(tableauImage[i]);
            
        }

        if (i === tableauImage.length) {
            i = 0
        }
    });






    // let tableauImage = Array("assets/img/bricolage.jpg", "assets/img/cuisine.jpg", "assets/img/jardinage.jpg", "assets/img/music.jpeg" , "assets/img/promenade.jpg", "assets/img/sport.jpeg", "assets/img/artplast.png"); // tableauImag=[]
    // console.log(tableauImage.length);
    // console.log(tableauImage);
    // let i = 0
    //     // création du carrousel
    // function diaporama() {
    //     // console.log("le diapo fonctionne"); // vérification du lancement de fonction
    //     $("#Carrouselimg").fadeOut(3000, function() { // function call back veux dire quand tu as fini ta fonction tu execute celle d'après (la fonction call back)
    //         if (i >= tableauImage.length) { // correction mais aussi optimisation
    //             i = 0
    //         }
    //         $(this).attr("src", tableauImage[i]);
    //         $(this).fadeIn(3000, function() {
    //             // if (i < tableauImage.length - 1) { // ma méthode
    //             //     i++;
    //             //     //console.log(i);
    //             // } else {
    //             //     i = 0;
    //             // }
    //             diaporama()
    //             i++
    //         });

    //     });
    // }
    // diaporama()


});