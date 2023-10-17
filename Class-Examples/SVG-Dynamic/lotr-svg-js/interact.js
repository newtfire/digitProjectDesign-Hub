const text = document.getElementsByClassName('textButton');
const bars = document.getElementsByClassName('displayBars');
/* 2023-10-13 ebb and ns: Trying to add an SVG animate element on click of the text element in a <g> */
/* Just for fun and learning, we are going to create an animate element from scratch
 * inside each <line> element in the SVG. 
 *  */
 
window.addEventListener('DOMContentLoaded', init, false);


function init(){
for (i = 0; i < text.length; i++){
        text[i].addEventListener('click', Show, false);        
    }
    for (i = 0; i < bars.length; i++) {
    //  ebb: This does not work: let animate = document.createElement("animate"); 
  /* You do actually need to add the SVG namespace for <animate> to function as an SVG element. 
   * Also, apparently you need to create these things after the window.onload event. */
   let animate = document.createElementNS("http://www.w3.org/2000/svg", "animate");

//ebb: The structure of the animatts variable here is called an Object. 
// Pulling data from it is a little tricky. It involves "destructuring" the Object to get it at the key, values as little arrays.
   let animatts = {
    attributeName: "x2",
    fill: "freeze",
    from: "0",
    to: "0",
    dur: "20s" 
    };
    
    setAttributes(animate, animatts);
    bars[i].appendChild(animate);
    }      
}


 function setAttributes(elem, obj) {
//  ebb: I've explored a few different ways to pull key value pairs from Objects. Each of these will work if uncommented. 
// I ultimately opted for the last one because it's the simplest syntax and uses a basic JS for-loop. 
// It struck me as the most versatile for lots of use-cases.

// VERSION 1: 
// for (var [key, value] of Object.entries(obj)) {
//  console.log(`${key}: ${value}`); }
//  /* 2023-10-13 ebb: Syntax from https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries 
// This syntax involves "template literals" to construct strings: see https://www.w3schools.com/js/js_string_templates.asp "" */
//  elem.setAttribute(`${key}`, `${value}`)

//VERSION 2
/* forEach is another way to iterate over an array or a map, and it's pretty convenient. 
 * You can use forEach on an Object only if you convert it into an array. There are a few different ways, but if you want to keep the key-value
 * pairing, it seems like Object.entries() is the way to go. See https://masteringjs.io/tutorials/fundamentals/foreach-object  */
/*Object.entries(obj).forEach(entry => {
  const [key, value] = entry;
  console.log(key, value);
  elem.setAttribute(key, value);
});*/

/* VERSION 3:  I've read that forEach has some unpredictable limitations. 
 * It's better to destructure the object using an old-fashioned JS for-loop. And it's not too bad. Here's how that looks:
 * Source: https://www.freecodecamp.org/news/how-to-iterate-over-objects-in-javascript/
 *  */
 for ([key, value] of Object.entries(obj)){
  console.log(key, value)
  elem.setAttribute(key, value);
} 
};


function Show(){
    Hide();
    for (i = 0; i < bars.length; i++){
        if (bars[i].id.split('-')[1] == this.id.split('-')[1]){
            
           var length = bars[i].getAttribute('x2');
           console.log(length);
           bars[i].querySelector('animate').setAttribute('to', length);    
        } 
        
    } 
}

function Hide(){
    for (i = 0; i < bars.length; i++){
       /* bars[i].style.display="none"; */
       bars[i].querySelector('animate').setAttribute('to', '0');
    }
}

