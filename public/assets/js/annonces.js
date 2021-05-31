document.addEventListener("DOMContentLoaded", function() {

    console.log("script en route");
    let popop = document.querySelector('.coucou');
    //let link = document.querySelector('.suite');
    let global = document.querySelector('.global');
    //let retour = document.querySelector('.retour');

    //link.addEventListener("click", function() {
    $(".suite").click(function(e) {
        e.preventDefault();

        console.log("click");
        popop.classList.add('coucou1');
        global.classList.add('flou');
        $(".global").addClass("flou");
    });

    //})
    //retour.addEventListener("click", function() {
    $(".retour").click(function(e) {
        e.preventDefault();

        popop.classList.remove('coucou1');
        $(".global").removeClass("flou");
    });

    //})


});