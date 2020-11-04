import { fetchData } from "./modules/DataMiner.js";

(() => {


    function ErrorMessageBox(message) {
        alert("An error has occured");
    }


    function handleDataSet (data) {
        let faveSection = document.querySelector('.fave-section'),
        faveTemplate = document.querySelector('#fave-template').content;

        for (let fave in data) {
            let currentFave = faveTemplate.cloneNode(true),
            currentFaveText = currentFave.querySelector('.fave').children;

            currentFaveText[0].src = `./images/${data[fave].image}`;
            currentFaveText[1].textContent = data[fave].name;
            currentFaveText[2].textContent = data[fave].description;
            currentFaveText[3].textContent = data[fave].start;

            faveSection.appendChild(currentFave);
        }
    }

    fetchData('./includes/functions.php').then(data => handleDataSet(data)).catch(err => console.log(err));
})();