Die dice;
int totalScore = 0;
int highScore = 0;
int lowScore = 0;

void setup(){
	size(500,500);
	noLoop();
}

void draw(){
	background(0);
	for (int i = 50; i < 400; i+=60) {
		dice = new Die(i,50);
		dice.show();
		totalScore += dice.randomRoll;
	}

	fill(255);
	text("total score: "+totalScore, 250,250);
	if (highScore < totalScore){
		highScore = totalScore;
	}
	if (lowScore > totalScore){
		lowScore = totalScore;
	}
	text("high: "+highScore, 250, 400);
	text("low: " + lowScore, 260, 350);
	totalScore = 0;


}

void mousePressed(){
	redraw();
}

class Die{

	//variable declarations here
	int myX, myY;
	int randomRoll;

	Die(int x, int y){
		//variable initializations here
		myX=x;
		myY=y;
		roll();
	}

	void roll(){
		//your code here
		int randomNum = (int)(Math.random()*6);

		if (randomNum == 0){
			randomRoll = 1;
		}
		else if (randomNum == 1) {
			randomRoll = 2;
		}
		else if (randomNum == 2) {
			randomRoll = 3;
		}
		else if (randomNum == 3) {
			randomRoll = 4;
		}
		else if (randomNum == 4) {
			randomRoll = 5;
		}
		else{
			randomRoll = 6;
		}
	}

	void show(){
		//your code here
		fill(255);
		rect(myX, myY, 50, 50);
		// fill(0);
		// text(randomRoll, 75, 75);

		if (randomRoll == 1){
			fill(0);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else if (randomRoll == 2) {
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
			
		}
		else if (randomRoll == 3) {
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
		}
		else if (randomRoll == 4) {
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+12, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
			ellipse(myX+12, myY+37, 10, 10);
		}
		else if (randomRoll == 5) {
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+12, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
			ellipse(myX+12, myY+37, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else{
			fill(0);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+12, 10, 10);
			ellipse(myX+12, myY+25, 10, 10);
			ellipse(myX+37, myY+25, 10, 10);
			ellipse(myX+12, myY+37, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
		}
	}
}
