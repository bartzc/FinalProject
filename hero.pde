public class hero {
  PImage hero;
  private int x = 600;
  private int y = 795;
  private int k;
  private int m = 795;
  private boolean shoot = false;
  ArrayList<heroList> shots = new ArrayList<heroList>(1);
  public hero() {
  }

  public void display() {
    hero = loadImage("hero.png");
    hero.resize(55, 55);
    image(hero, x, 800);
    if (keyPressed&&keyCode == ' ') {
      shoot = true;
      shots.add(new heroList(x+25, 795));
    }
    if (keyPressed&&keyCode == LEFT) {
      x-=5;
    }
    if (keyPressed&&keyCode == RIGHT) {
      x+=5;
    }


    if (shoot == true) {
      for (int i = shots.size()-1; i>=0; i--) {
        fill(0, 252, 0);
        rect(shots.get(i).getX(), shots.get(i).getY(), 5, 20);
        shots.get(i).incrY();

        if (shots.get(i).getY()<=-10) {
          shots.remove(i);
        }
      }
    }
  }

  void shoot() {
  }
}
