document.addEventListener("DOMContentLoaded", function() {

    let popop = document.querySelector('.popUp');

    console.log("nombre de Pop up est de " + popUpNumber);
    for (let index = 0; index < popUpNumber; index++) {
        //console.log("ittération n° " + index);
        //"popUpAnnonceNum + popUpNumber"

        $("#suite" + index).click(function(e) {
            e.preventDefault();

            $("#popUpAnnonceNum" + index).addClass("popUpAnnonce");
            $(".global").addClass("flou");
        });

        $(".retour").click(function(e) {
            e.preventDefault();
            $("#popUpAnnonceNum" + index).removeClass("popUpAnnonce");
            $(".global").removeClass("flou");
        });

    }


});