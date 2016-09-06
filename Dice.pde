Die dice;

void setup(){
	size(500,500);
	noLoop();
}

void draw(){
	background(0);
	dice = new Die(50,50);
	dice.show();
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
		ellipse(myX, myY, 50, 50);
		fill(0);
		text(randomRoll, 50, 50);
	}
}
