import processing.video.*;
Movie m;
float s;
void setup()
{
size( 640, 360 );
m = new Movie( this, "pulp1.mp4" );
m.loop();
s = 2.0;
}
void draw()
{
background( 0 );
image( m, 0, 0, width, height );
filter( POSTERIZE, 3 );
fill(255);
text( "Speed: " + s, 20, 20 );
}
void movieEvent( Movie m )
{
m.read();
}
void mousePressed()
{
s = map( mouseX, 0, width, 0, 7 );
m.speed( s );
}