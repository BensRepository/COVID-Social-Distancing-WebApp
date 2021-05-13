// random picture generated
var score = 0;
function test()
{
   var picture = ["boris","sanitiser","mask","december2019","2m","yes"]; //picture array
   var random = Math.floor(Math.random() * picture.length); //random number generated within the length of picture array
   var y = picture[random]; //random picture picked
   var image = document.createElement("img");
   image.src = y + ".jpg";
   document.body.appendChild(image); //displays according


   // guess counter
   var guess = 1;

   document.getElementById("submitguess").onclick = function(){

  //  guess by user
   var x = document.getElementById("guessField").value;

   if(x == y) //check if the guess is correct
   {
      score++
      alert("WELL DONE!! The it was " + y +", you guessed it in "
                + guess + " attempts! "); // if right displays this message
      if(score == 5){
        alert("You passed the test!")
        location.reload();

      }
      else {
        test();
      }

  }
  else
  {
      guess++;
      alert("Not quite! your score was " + score) //if wrong displays this message
      score = 0;
      test();
  }
}};




