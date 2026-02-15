#pragma once
#include <iostream> // Основной модуль
#include <random>	// Для создания массива случайных чисел
#include <cstring>	// Для принятия параметра названия файла в FileMas
#include <fstream>	// Для работы с файлами
#include <ctime>	// Для получения времени работы кода в секундах
#include <format>	// Для совместного использования текста и переменных в cout
#include <chrono>	// Для получения времени работы кода в наносекундах

using namespace std;
using namespace std::chrono; // namespace для функций получения времени работы кода в наносекундах


// Функция таймера работы функций
// Принимает функцию
template <typename funcT> // Для принятия функции любого типа
void timer(funcT func){

	time_t t0 = time(nullptr); // Начало отсчёта секунд
	auto ns0 = steady_clock::now(); // Начало отсчёта наносекунд
	func(); // Запуск проверочной функции
	time_t t1 = time(nullptr); // Конец отсчёта секунд
	auto ns1 = steady_clock::now(); // Конец отсчёта наносекунд

	cout << "Время работы кода: " << t1 - t0 << "s. или " << ns1 - ns0 << endl;
}


// Функция по заполнению массива случайными числами в заданном диапазоне
// Принимает количество значений (n), минимальное значение (min) и максимальное (max)
// Отдаёт заполненный массив
template <typename fid>	// Для принятия значений min, max любого типа данных
double* RandMas(int n, fid min, fid max){

	double *a = new double[n]; // Создаёт массив

    random_device rd;
    mt19937 g(rd());
	uniform_real_distribution <> d(min, max); 

	for (int i = 0; i < n; ++i)
	{
		a[i] = d(g);	// Передаёт в элемент массива случайнное число
	}
	return a;
}


// Функция по заполнению массива случайными числами с возрастанием предыдущего в заданном диапазоне
// Принимает количество значений (n), минимальное значение (min) и максимальное (max)
// Отдаёт заполненный массив
// Делит диапазон на кол-во значений и выдаёт значение в каждом отрезке
template <typename fid>
double* RandMasUp(int n, fid min, fid max){

	double *a = new double[n];
	double cut = (max - min) / n;	// Высчитывает отрезок

	max = min + cut;	// Получаем максимальное, прибавив отрезок к минимальному

    random_device rd;
    mt19937 g(rd());

	for (int i = 0; i < n; ++i)
	{

		uniform_real_distribution <> d(min, max);

		a[i] = d(g);
		min = max;	// Минимальное значение увеличивается до предыдущего максимального
		max = min + cut;	// Максимальное значение увеличивается на отрезок
	}
	return a;
}


// Запись массива в файл
// Принимает кол-во значений n, массив a, название файла sf
template<typename fid>
void FileMas(int n, fid *a, const string &sf)
{
	ofstream F(sf);	// Разрешает запись файла
    
    F << "Массив: " << endl;
    for (int i = 0; i < n; i++) {
        F << a[i] << " ";	// Вписывает элемент массива в файл
    }
    
    F.close();	// Закрыввает файл
}


// Поиск значений массива в заданном диапазоне
// Принимает количество значений n, массив a, минимальное значение min и максимальное max
template <typename fid>
void SearchMas(int n, fid *a, fid min, fid max){

	int j = 0;
	double *b = new double[j];

	for (int i = 0; i < n; ++i)
	{
		// Если элемент удовлетворяет заданным требованиям, вписывает элемент во второй массив
		if (a[i]>= min && a[i]<= max)
		{
			j++;
			b[j] = a[i];
		}
	}
	
	cout << "Найденные значения:" << endl;
	for (int i = 1; i <= j; ++i)
	{
		cout << b[i] << endl;	// Выводит значения удовлетворяющие требованиям
	}
}