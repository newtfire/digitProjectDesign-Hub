window.addEventListener('DOMContentLoaded', bunny, false)

function bunny(){
 alert ('wow this code actually works for once');
 var buttons = document.getElementsByTagName("button")
  for (var i = 0, length = buttons.length; i < length; i++)
  buttons[i].addEventListener('click', showHide, false)

}

function showHide() {
/*window.alert("function lineShow is firing, and this.id is: " + this.id);*/
    hideOthers()
    var sectionID = 'data-' + this.id
    var selSection = document.getElementById(sectionID)
    selSection.style.display= 'block';
}

function hideOthers() {
var sections = document.getElementsByClassName('data')
for (var d = 0; d < sections.length; d++) 
sections[d].style.display='none';
}