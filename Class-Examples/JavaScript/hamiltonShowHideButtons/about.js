window.addEventListener('DOMContentLoaded',init,false);
function init() {
var buttons = document.getElementsByTagName('button');
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener('click', toggle, false);     
}
}
function toggle() {
/*window.alert("function lineShow is firing, and this.id is: " + this.id);*/
    hideOthers()
/* ebb: hideOthers() puts away any other div elements of class="main" that might be display:block at this point. */
    var divID = 'about' + this.id
/* ebb: **this** is a magic word in JS: it means the element that a visitor is clicking on or accessing RIGHT NOW. 
 * This var divID is  a variable adds the string `about` to the @id of the button currently clicked. We need that to locate the 
 * HTML element we want to make display with display:block below.  */
    var selDiv = document.getElementById(divID)
    selDiv.style.display= 'block';
}

function hideOthers() {
var divs = document.getElementsByClassName('main')
for (var d = 0; d < divs.length; d++) 
divs[d].style.display='none';
}
