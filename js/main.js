import { fetchData } from "./modules/DataMiner.js";

(() => {

    function handleDataSet (data) {
        //populate a lightbox with this data
        //and open it
        let lightbox = document.querySelector(".lightbox");
    }
    
    function retrieveFaveInfo(event){
        //check for id and if none don't even try it cuz it'll break
        if (!event.target.id) { return }
        fetchData(`./includes/index.php?id=${event.target.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }
    
    function renderFaveThumbs(data){

        let faveSection = document.querySelector('.fave-section'),
        faveTemplate = document.querySelector('#fave-template').content;
    
        for (let fave in data) {
            let currentFave = faveTemplate.cloneNode(true),
                currentFaveText = currentFave.querySelector('.fave').children;
    
                currentFaveText[1].textContent = data[fave].name;
                currentFaveText[2].src = `images/${data[fave].image}`;
                currentFaveText[3].textContent = data[fave].description;
                currentFaveText[4].textContent = data[fave].start;
    
                faveSection.appendChild(currentFave);
        }
    
        faveSection.addEventListener("click", retrieveFaveInfo);
    }
    fetchData('./includes/index.php').then(data => renderFaveThumbs(data)).catch(err => console.log(err));
})();


