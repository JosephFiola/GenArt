function setup() {

	var canvas = createCanvas(400, 400);
	canvas.parent("canvas");				// attaching this canvas to the div id "canvas" in the HTML file to control positioning
	background(0);
	stroke(0,50);
	fill(255,200);
	
	var xstart = random(10);					// there are no variable types in javascript so all variables use var instead of int, float, etc...
	var ynoise = random(10);
	translate(width/2, height/2);
	for(var y = -(height/8); y <=(height/8); y+=3){
		ynoise +=0.02;
		var xnoise = xstart;
		for(var x = -(width/8); x<=(width/8); x+=3){
			xnoise+=0.02;
			drawPoint(x,y, noise(xnoise,ynoise));
		}	
	}	
}

function drawPoint(x,y,noiseFactor){
	push();									//push() in p5.js instead of pushMatrix()
	translate(x * noiseFactor * 4, y * noiseFactor * 4, -y);
	var edgeSize = noiseFactor * 26;
	ellipse(0,0,edgeSize,edgeSize);
	pop();									//pop() in p5.js instead of popMatrix() 
}