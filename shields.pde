public class shields {
  PShape s;
  private int x=50;
  private int y=50;
  void setup() {
    s = loadShape("shieldFull.png");
  }

  public void display() {
    shape(s, x, y);
  }
}
