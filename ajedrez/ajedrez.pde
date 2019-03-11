size(800, 800);
background(255);

int numRect = 8;
int wr = width / numRect; //ancho rectángulo
int hr = height/ numRect; //alto rectángulo
int x = 0;
int y = 0;
int columna = 0; //vertical
int fila = 0; //horizontal
int colorPar = 255, colorNon = 0;
for ( y = 0; y < height; y = y + hr) 
{

  if (fila %2 == 0)
  {
    colorPar = 255;
    colorNon = 0;
  } 
  else 
  {
    colorPar = 0;
    colorNon = 255;
  }
  for ( x = 0; x < width; x = x + wr) 
  {

    if (columna % 2 == 0) 
    {
      fill (colorPar);
    } 
    else 
    {
      fill (colorNon);
    }

    rect ( x, y, wr, hr);
    columna = columna + 1;
  }
  fila = fila + 1;
}
