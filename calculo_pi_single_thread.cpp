#include <iostream>
#include <math.h>
#include <iomanip>

using namespace std;

double interger_pi(double start, double stop, double dx)
{
  double pi = 0;
  double x = start;

  while (x <= stop)
  {
    pi += 4.0 / (1.0 + pow(x, 2));
    x = x + dx;
  }

  pi *= dx;

  return pi;
}

int main(int argc, char *argv[])
{
  if (argc != 2)
  {
    cout << "Usage: " << argv[0] << " <delta x>" << endl;
    return 1;
  }

  double dx = atof(argv[1]);
  dx = 1.0 / dx;
  double pi = interger_pi(0, 1, dx);

  cout << "Valor da integral de pi: " << setprecision(10) << pi << endl;

  return 0;
}