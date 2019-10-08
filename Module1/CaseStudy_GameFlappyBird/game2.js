//to draw the canvas you need first to select the canvas element.
const cvs = document.getElementById("bird");
//then get the context to return methods and properties that will 
//allow us to draw to the canvas.
const ctx = cvs.getContext("2d");

const sprite = new Image();
sprite.src = "img/sprite.png";

//function draw will handle all the drawing we do to the canvas.
function draw() {
    ctx.fillStyle = "#70c5ce";
    ctx.fillRect(0, 0, cvs.width, cvs.height);
}

//we need a loop function to update our game every second.
//inside the loop f. I will use requestAnimationFrame which take 
//in a callback function which is our loop f here.
function loop() {
	draw();

	requestAnimationFrame(loop);
}
loop();