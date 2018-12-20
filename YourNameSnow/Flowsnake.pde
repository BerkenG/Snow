class Flowsnake {
  private int x;
  private int y;
  private int xspeed;
  private int yspeed;
  private int size;



  public Flowsnake() {
    x = (int)(Math.random()*width);
    y = (int)(Math.random()*500)-500;
    xspeed = (int)(Math.random()*5)-4;
    yspeed = (int)(Math.random()*5)+4;
    size = (int)(Math.random()*5);
  }
  public void show() {
    fill(255, 255, 255);
    noStroke();
    ellipse(x, y, size, size);
  }
  public void move() {
    x+=xspeed;
    y+=yspeed;
    if (y>500) {
      y=-15;
      x = (int)(Math.random()*width);
    }
  }
}
