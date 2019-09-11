var imageSources = ["../img/homebg.jpg", "../img/homebg1.jpg", "../img/homebg2.jpg", "../img/homebg3.jpg"]

var index = 0;
setInterval (function(){
  if (index === imageSources.length) {
    index = 0;
  }
  document.getElementById("image").src = imageSources[index];
  index++;
} , 2000);
