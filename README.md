# FinalProject
Space invaders



Introduction:
Goal of this project is to create a space invaders type game, but with a few modifications such as power-up and a final boss, harder than all the other enemies, and an easter egg in the game, separate from the actual object of the game. The mechanics of the game will be very similar to  the original game, with some tweaks to accommodate for the final boss and easter egg. 


Description:
 Start screen black w/ white text (image 1)
Includes score:0
Player name(can be edited by user)
Play button, leaderboards option(maybe), credits button
Leaderboard button
Credits button
Leaderboards  (image 2)
Will show ------ for no place entry(maybe)
Uses arrayList object( object is score and username)
See attached image for example
Re write to file in greatest to smallest order(score) after game end
Credits
Made by
Music
Pics
Game
Use collision detection for hits
Not  instantaneous, travel time(lead shots)
Left and right arrows for movement
Sound plays processing.sound.*;
Alien Ships and shields in ArrayList
Hero ship just object
Milestones
May 22nd
Proposal and leaderboards
May 26th 
Have ships and shields in game
Hero ship as well
No firing
June 1st
Scoring system
Firing and hit detection
June 7th
Final touches and present


Final Thoughts: 
I have done most that I wanted to complete, some things are missing but still more complete than the average cod game

Things that I want to finish over the summer:
Shields go in
Ships shoot back
push to leaderboards
easteregg


Runner:
import processing.sound.*;
PFont type;
board b;
openBoard list = new openBoard();
sorts s = new sorts();
setBoard board;
credit c = new credit();
play g = new play();
private int score;
private String name;
private ArrayList<leaderboards> lead = new ArrayList<leaderboards>(6);
boolean right = true;
boolean left = false;
boolean down = false;

boolean home = true;
boolean play = true;
boolean game = false;



void setup() {
  size(1000, 1500);
  //background(0);
  type = createFont("spaceInvaders.ttf", 32);
  lead = list.pullList();
  lead = s.sortArr(lead);
}
void draw() {
  fill(255);
  if (home==true) {
    background(0);
    textFont(type, 75);
    text("Space Invaders", 145, 300);

    textFont(type, 50);
    text("Play", 425, 700);
    text("leaderboards", 275, 850);
    text("credits", 374, 1000);
  }

  //leaderboards button
  if (home==true&&mouseX>=255&&mouseX<=740&&mouseY>=800&&mouseY<=855) {
    cursor(HAND);
    if (mousePressed) {
      home = false;
      b = new board(lead);
      b.display();
    }
  } else if (mouseX>=20&&mouseX<=175&&mouseY>=1415&&mouseY<=1455) {
    cursor(HAND);
    if (mousePressed) {
      home = true;
    }
  } else {
    cursor(ARROW);
  }


  //play button
  if (home==true&&mouseX>=400&&mouseX<=570&&mouseY>=650&&mouseY<=720) {
    cursor(HAND);
    if (mousePressed) {
      game = true;
      background(0);
      g.setShips();
    }
  } else {
    cursor(ARROW);
  }




  //credits button
  if (home==true&&mouseX>=349&&mouseX<=609&&mouseY>=950&&mouseY<=1200) {
    cursor(HAND);
    if (mousePressed) {
      home = false;
      c.display();
    }
  } else if (mouseX>=20&&mouseX<=175&&mouseY>=1415&&mouseY<=1455) {
    cursor(HAND);
    if (mousePressed) {
      home = true;
    }
  } else {
    cursor(ARROW);
  }

  if (game==true) {
    home = false;
    //background(0);
    
    background(0);
    g.display();
    g.update();
   
    
  }
}



/*
 play = g.gameEnd();
 //finalize leaderboards
 if(!play){
 score = g.finalScore();
 name = g.Name();
 board = new setBoard(lead, name, score);
 */
