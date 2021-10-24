/* See Stack Overflow: 
 * https://stackoverflow.com/questions/30022728/perform-action-when-clicking-html5-datalist-option */

window.addEventListener('DOMContentLoaded',pageLoadUp,false);



function pageLoadUp() {
   var button = document.getElementById("scrollToTop")
   button.addEventListener('click', scrollToTop, false)
   var inputs = document.getElementsByTagName('input')
   for (var i = 0, length = inputs.length; i < length; i++)
   {
   inputs[i].addEventListener('input', onInput);  
   }
   
}

function onInput(e) {
    var input = e.target;
    var val = input.value;
    var list = input.getAttribute('list');
    var options = document.getElementById(list).childNodes;
     for (var i = 0, length = options.length; i < length; i++) {
      var value = options[i].value;
      if(value === val)
      {
      // An item was selected from the list!
      alert('item selected: ' + val);
      var matchid = options[i].id.split('_')[1]
        console.log('matchid is', matchid );
        var matchTable = document.getElementById(matchid)
        matchTable.scrollIntoView(true);
      break;
        }
        }

}

/*function navigate() {
/\*var matchid = this.id.split('_')[1]*\/
alert('What is my matchid?', matchid)
console.log('What is my matchid?', matchid)
var matchTable = document.getElementById(matchid)
    matchTable.scrollIntoView(true);
}*/


function scrollToTop(){
    var scroll = window.scrollTo(0,0);
    window.scrollTo(0,0);
}

