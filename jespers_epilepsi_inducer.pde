int size = 40;
int [][] grid = new int[25][25];

void setup()
{
  size(1001, 1001);
  initRandomValues();
  
  grid[6][7] = 3;
}

void draw()
{
  initRandomValues();
  drawBackground();
}

void drawBackground()
{
  for (int x = 0; x < grid.length; x++)
  {
    for (int y = 0; y < grid[0].length; y++)
    {
      fill(getColorFromType(grid[x][y]));

      rect (x * size, y * size, size, size);
    }
  }
}

void initRandomValues()
{
  for (int x = 0; x < grid.length; x++)
  {
    for (int y = 0; y < grid[0].length; y++)
    {
      grid [x][y] = (int)random(0,5);
    }
  }
}

color getColorFromType(int type)
{
  color c = color(255);

  switch(type)
  {
  case 0:
    c = color(127);
    break;
  case 1:
    c = color (255, 0, 0);
    break;
  case 2:
    c = color (0, 255, 0);
    break;
  case 3:
    c = color (0, 0, 255);
    break;
  case 4:
    c = color (0, 255, 255);
    break;
  }

  return c;
}
