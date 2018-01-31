
int amount = 800;
int x = 0;

public void setup()
{
	size(400,400);
}

public void draw()
{
	background(0);
	sierpinski(0,400,amount);
	x = x+1;
}

void keyPressed()
{
    if (key == CODED)
 	{
 		if (keyCode == UP)
 		{
 			amount = amount+3;
 		}
 	    if (keyCode == DOWN)
 	    {
 			amount = amount -3;
 	 	}
 	}
}

public void sierpinski(int x, int y, int len) 
{
	if (len <=15)
	{
		noStroke();
		fill(x,x,200);
		triangle(x,y,x+len,y,x+len/2,y-len);
		fill(0);
		ellipse(x+len/2,y-2*len/5,len/4,len/4);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4, y - len/2,len/2);
	}
}