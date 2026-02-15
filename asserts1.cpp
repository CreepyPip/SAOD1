#include "alg1.cpp"
#include <cassert>


// Проверка функции на возрастание
void test1() {

	// Задаём переменные
	int n = 4;
	float min = -10;
	float max = 10;

	// Создаём массив
	double *a = new double[n];

	a = RandMasUp(n, min, max);	// Получаем массив

	for (int i = 1; i < n; ++i)
	{
		assert(a[i-1] < a[i]);  // Если текущее значение меньше предыдущего, программа продолжается
	}
		
	cout << "Тест окончен. Ошибок нет." << endl;
}