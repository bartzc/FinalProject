public class ships {
  private PImage ship;
  private int xPos;
  private int yPos;

  public ships(PImage s, int x, int y) {
    xPos = x;
    yPos = y;
    ship = s;
  }
  public ships() {
  }
  public PImage getShip() {
    return ship;
  }
  public int getX() {
    return xPos;
  }
  public int getY() {
    return yPos;
  }
  public void incrX(int n) {
    xPos+=n;
  }
  public void incrY() {
    yPos+=50;
  }
  public void decX(int n) {
    xPos=xPos-n;
  }
}
