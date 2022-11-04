#include <iostream>
#include <vector>
#include <thread>
#include <mutex>
#include <iomanip>

using namespace std;

double pi_result = 0;
mutex pi_mutex;

double f(double x)
{
  return 4.0 / (1.0 + x * x);
}

void interger_pi(double start, double stop, double dx)
{
  double pi = 0;
  double x = start;

  while (x <= stop)
  {
    pi += f(x);
    x = x + dx;
  }

  pi *= dx;

  pi_mutex.lock();
  pi_result += pi;
  pi_mutex.unlock();
}

int main(int argc, char *argv[])
{
  if (argc != 3)
  {
    cout << "Usage: " << argv[0] << " <number of threads>"
         << " <delta x>" << endl;
    return 1;
  }

  int thread_number = atoi(argv[1]);
  double delta = atof(argv[2]);
  vector<thread> threads(thread_number);
  double dx = 1.0 / delta;

  for (int i = 0; i < thread_number; i++)
  {
    double start = (i * delta / thread_number) * dx;
    if (i != 0)
      start += dx;
    double stop = ((i + 1) * delta / thread_number) * dx;
    threads.push_back(thread(interger_pi, start, stop, dx));
  }

  for (auto &th : threads)
  {
    if (th.joinable())
      th.join();
  }

  cout << "Valor da integral de pi: " << setprecision(10) << pi_result << endl;

  return 0;
}