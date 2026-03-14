#include "alg1.cpp"

template <typename funcT> // Для принятия функции любого типа
long long timertest(funcT func){

	auto ns0 = steady_clock::now(); // Начало отсчёта наносекунд
	func(); // Запуск проверочной функции
	auto ns1 = steady_clock::now(); // Конец отсчёта наносекунд
	long long ns = duration_cast<nanoseconds>(ns1 - ns0).count();

	return ns;
};

int main()
{

	int n = 100000;
	int min = -32100;
	int max = 32100;

	double maxs = 1.0;
	long long ns = 0;

	double *a = new double[n];

	cout << "pipa" << endl;

	for (int i = 0; i < 8; ++i)
	{

		a = RandMasUp(n, min, max);

		ns = timertest([&]() {
		for (int j = 0; j < 10000; ++j)
		{
			SearchMasBi(n, a, maxs);
		}});

		cout << ns << endl;
		n = n + 50000;

	};

}