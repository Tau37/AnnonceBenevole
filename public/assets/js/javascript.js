$(document).ready(function() { // charge le DOM avant d'executer le script à l'intérieur de la function

    $(".carousel").owlCarousel({
        margin: 20,
        loop: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1,
                nav: false
            },
            600: {
                items: 2,
                nav: false
            },
            1000: {
                items: 3,
                nav: false
            }
        }
    });

    // choix formulaire

    $("select").change(function() {
        let str = "";
        $("select option:selected").each(function() {
            str += $(this).text();
        });
        if (str == 'Structure') {
            $(".structure").slideDown(700);
        };
        if (str == 'Bénévole') {
            $(".structure").slideUp(700);
        }
    });
    // ajax données sur les structures
    $.ajax({
            url: '/user/ajax',
            method: 'GET',
            dataType: 'json'
        })
        .done(function(data) {
            initMap(data)
        })
        .fail(function() {
            console.log('error');
        });

    // OpenStreetMap

    function initMap(donnees = NULL) {
        let carte = L.map('streetmap').setView([46.225, 0.132], 6);
        L.tileLayer('https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png', {
            attribution: 'données <a href="//osm.org/copyright">OpenstreetMap</a>/ODbl - rendu <a href="//openstreetmap.fr">OSM France</a>',
            minZoom: 1,
            maxZoom: 20
        }).addTo(carte);
        let markers = L.markerClusterGroup();
        for (donnee in donnees) {
            let marqueur = L.marker([donnees[donnee].lat, donnees[donnee].lon]); //.addTo(carte) Utilisation de MarkerCluster;
            marqueur.bindPopup("<p style='color: crimson; text-align: center;'>" + donnees[donnee].structure + "<a style='color: crimson; display: block;' href='#'>Contacter</a></p>");
            markers.addLayer(marqueur);
        }
        carte.addLayer(markers);
    }





    // let tableauImage = Array("assets/img/bricolage.jpg", "assets/img/cuisine.jpg", "assets/img/jardinage.jpg", "assets/img/music.jpeg" , "assets/img/promenade.jpg", "assets/img/sport.jpeg", "assets/img/artplast.png"); // tableauImag=[]
    // let i = 0
    // $(".photo").click(function() {


    //     if (i < tableauImage.length) {

    //         $("#Carrouselimg").attr("src", tableauImage[i])

    //         i++
    //         console.log(tableauImage[i]);

    //     }

    //     if (i === tableauImage.length) {
    //         i = 0
    //     }
    // });






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