#include "alg1.cpp"

int main()
{

	int n = 100000;
	double min = -321;
	double max = 321;

	double mins = 0;
	double maxs = 0.01;

	double *a = new double[n];

	for (int i = 0; i < 8; ++i)
	{

		a = RandMas(n, min, max);

		timer([&]() {SearchMas(n, a, mins, maxs);});
		n = n + 50000;

	}

}