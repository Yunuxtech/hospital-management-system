var picture = document.querySelector("body");
var Isblue = false;
setInterval(function() {
    if (Isblue) {
        picture.style.backgroundImage = "url('images/hospital.jpg')";
        picture.style.backgroundSize = "cover";
    } else {
        picture.style.backgroundImage = "url('images/clinic1.jpg')";
        picture.style.backgroundSize = "cover";
    }
    Isblue = !Isblue;
}, 10000);