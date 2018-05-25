public class play {
  ArrayList<ships> shipList = new ArrayList<ships>();

  createShips s = new createShips();
  ships ship = new ships();
  boolean right = true;
  boolean left = false;
  boolean down = false;

  public play() {
  }

  //ship shape width/height is 30x30 with 24 pixels between each shape
  public ArrayList<ships> setShips() {
    int x = 200;
    int y = 234;
    int j=0;
    for (int i =0; i<55; i++) {
      if (i<11) {
        shipList.add(new ships(s.ship3(), x, y));
        x+=64;
        j++;
      } else if (i<22) {
        shipList.add(new ships(s.ship2(), x, y));
        x+=64;
        j++;
      } else {
        shipList.add(new ships(s.ship1(), x, y));
        x+=64;
        j++;
      }
      if (j==11) {
        y+=44;
        j=0;
        x = 200;
      }
    }
    return shipList;
  }
  public void update() {
    for (int i = 0; i<shipList.size(); i++) {
      shipList.get(i).decX(2);
      if (shipList.get(10).getX()>=800&&right==true) {
        shipList.get(i).decX(2);
        shipList.get(i).incrX(0);
        right = false;
        left = true;
        down = true;
      }
      if (shipList.get(0).getX()<=50&&left==true) {
        shipList.get(i).incrX(2);
        shipList.get(i).decX(0);
        right = true;
        left = false;
        down = true;
      }
      if (down == true) {
        shipList.get(i).incrY();
        down = false;
      }
    }
  }



  public void display() {
    
    //background(0);
    for (int i = 0; i<shipList.size(); i++) {
      image(shipList.get(i).getShip(), shipList.get(i).getX(), shipList.get(i).getY());
    }
    //update();
    System.out.print(shipList.get(10).getX());
    
  }
}
