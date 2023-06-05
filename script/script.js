document.querySelector(".buttons button:nth-child(1)").addEventListener('click', () => {
    document.querySelector("#section_film").classList.replace("film_vignette", "film_liste");

    document.querySelectorAll(".film_synopsis").forEach((synopsis) => {
        synopsis.style.display = "block"
    });
});
document.querySelector(".buttons button:nth-child(2)").addEventListener('click', () => {
    document.querySelector("#section_film").classList.replace("film_liste", "film_vignette");

    document.querySelectorAll(".film_synopsis").forEach((synopsis) => {
        synopsis.style.display = "none"
    });
});

