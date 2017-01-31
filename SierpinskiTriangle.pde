public void setup()
{
  size(500,500);
  background(50); 
}
public void draw()
{
sierpinski(0,500,500);
stroke(0);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len<=mouseX+10)
  {
   // fill(255);
   	fill((int)(Math.random()*256),0,0);
    triangle(x,y,x+len/2,y-len,x+len,y);
    fill(0,(int)Math.random()*256,0);
    triangle(x,y,x+len,y-len,x-len,y);
  }
  else
  {
  	sierpinski(x,y,len/2);
  	sierpinski(x+len/2,y,len/2);
  	sierpinski(x+len/4,y-len/2,len/2);
    
    
  }
}