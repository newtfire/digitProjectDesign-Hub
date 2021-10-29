window.addEventListener('DOMContentLoaded',pageLoadUp,false);

function pageLoadUp() {
   var button = document.getElementById("dropbutton")
   button.addEventListener('click', myFunction, false)
   var inputs = document.getElementsByTagName('input')
   for (var i = 0, length = inputs.length; i < length; i++)
   {
      /* ebb: Listen for input event */
   inputs[i].addEventListener('input', onInput);  
   }
   
   
   /* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("godDropdown").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("godChoice");
  filter = input.value.toUpperCase();
  div = document.getElementById("godDropdown");
  a = div.getAttribute('value');
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}
   
   
/*function onInput(e) {
    var input = e.target;
    var val = input.value;
    var list = input.getAttribute('list');
    var options = document.getElementById(list).childNodes;
     for (var i = 0, length = options.length; i < length; i++) 
     { var value = options[i].value;
      if(value === val)
      {
        // An item was selected from the list!
        alert('item selected: ' + val);
        var matchid = options[i].id.split('_')[1]
        console.log('matchid is', matchid );
        var matchTable = document.getElementById(matchid)
        matchTable.scrollIntoView(true);
        break; }
        }
    }
}
*/

function scrollToTop(){
    var scroll = window.scrollTo(0,0);
    window.scrollTo(0,0);
}
}
