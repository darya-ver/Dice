Die dice;
int totalScore = 0;
int highScore = 0;
int lowScore = 100;

int numTries = 0;

int numWins = 0;

int num1s = 0;
int num2s = 0;
int num3s = 0;
int num4s = 0;
int num5s = 0;
int num6s = 0;

int numToGetTo = 10;

void setup(){
	size(500,500);
	noLoop();
}

void draw(){
	background(100);
	
	textSize(40);
	text("Try to get 10 of a kind", 40, 60);

	for (int j=80; j<=340; j+=80){
		for (int i = 50; i < 450; i+=60) {
			dice = new Die(i,j);
			dice.show();
			totalScore += dice.randomRoll;

			if (dice.randomRoll == 1){
				num1s += 1;
			}
			else if (dice.randomRoll == 2){
				num2s += 1;
			}
			else if (dice.randomRoll == 3){
				num3s += 1;
			}
			else if (dice.randomRoll == 4){
				num4s += 1;
			}
			else if (dice.randomRoll == 5){
				num5s += 1;
			}
			else{
				num6s += 1;
			}
		}
	}
	
	fill(155);
	rect(0, 450, 500, 50);

	fill(255);
	textSize(30);
	text("Tries: "+ numTries, 125,483);

	// text("Total Score: "+ totalScore, 125,483);


	// textSize(10);

	// text("number of 1's: " + num1s, 4,350);
	// text("number of 2's: " + num2s, 4,370);
	// text("number of 3's: " + num3s, 4,390);
	// text("number of 4's: " + num4s, 4,410);
	// text("number of 5's: " + num5s, 4,430);
	// text("number of 6's: " + num6s, 4,450);

	if (num1s >= numToGetTo){
		textSize(70);
		text("You Won!!", 100, 250);
		numWins += 1;
	}
	else if (num5s >= numToGetTo){
		textSize(70);
		text("You Won!!", 100, 250);
		numWins += 1;
	}
	else if (num2s >= numToGetTo){
		textSize(70);
		text("You Won!!", 100, 250);
		numWins += 1;
	}
	else if (num3s >= numToGetTo){
		textSize(70);
		text("You Won!!", 100, 250);
		numWins += 1;
	}
	else if (num4s >= numToGetTo){
		textSize(70);
		text("You Won!!", 100, 250);
		numWins += 1;
	}
	else if (num6s >= numToGetTo){
		textSize(70);
		text("You Won!!", 100, 250);
		numWins += 1;
	}
	
	textSize(30);
	text("Wins: "+ numWins, 300,483);

	totalScore = 0;

	num1s = 0;
	num2s = 0;
	num3s = 0;
	num4s = 0;
	num5s = 0;
	num6s = 0;


}

void mousePressed(){
	redraw();
	numTries += 1; 
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

		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		strokeWeight(3);
		rect(myX, myY, 50, 50, 7);

		if (randomRoll == 1){
			fill(255);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else if (randomRoll == 2) {
			fill(255);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
			
		}
		else if (randomRoll == 3) {
			fill(255);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
		}
		else if (randomRoll == 4) {
			fill(255);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+12, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
			ellipse(myX+12, myY+37, 10, 10);
		}
		else if (randomRoll == 5) {
			fill(255);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+12, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
			ellipse(myX+12, myY+37, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		else{
			fill(255);
			ellipse(myX+12, myY+12, 10, 10);
			ellipse(myX+37, myY+12, 10, 10);
			ellipse(myX+12, myY+25, 10, 10);
			ellipse(myX+37, myY+25, 10, 10);
			ellipse(myX+12, myY+37, 10, 10);
			ellipse(myX+37, myY+37, 10, 10);
		}
	}
}
