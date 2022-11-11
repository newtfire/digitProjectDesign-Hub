window.onload = init;

function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    /* this in JS means THE NODE THAT THE USER CLICKED OR INTERACTED WITH. Here we store the id of this  (input box) in a variable.*/
    
    switch (id) {
        case "personToggle": {
            var chars = document.getElementsByClassName("person");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
            }
        };
        break;
        case "placeToggle": {
            var places = document.getElementsByClassName("place");
            for (var i = 0; i < places.length; i++) {
                places[i].classList.toggle("on")
            }
        };
        break;
        }
      }
        

