﻿#language: ru
@tree

Функционал: Проверка возможности прикрепления файла картинки в форму элемента товар Молоко

Как Тестировщик я хочу
проверить наличие возможности прикрепить файл картинки в форму элемента справочника Товары
чтобы обеспечить полноту проработки элемента справочника Товары 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка возможности прикрепления файла картинки в форму элемента товар
	когда экспорт данных товара Молоко
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Вид'   | 'Код'       | 'Наименование' | 'Поставщик'           |
		| 'Mol34'   | 'Товар' | '000000026' | 'Молоко'       | 'Животноводство ООО ' |
	И в таблице "Список" я выбираю текущую строку
	Когда открылось окно 'Молоко (Товар)'
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Когда открылось окно 'Файл (создание)'
	И я выбираю файл "C:\Курсы 1С\Тестирование\Практические занятия\Финальное задание\Молоко1.jpg"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Молоко1.jpg (Файл)' в течение 20 секунд
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'

Сценарий: Проверка наличия прикрепленного файла картинки
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Вид'   | 'Код'       | 'Наименование' | 'Поставщик'           |
		| 'Mol34'   | 'Товар' | '000000026' | 'Молоко'       | 'Животноводство ООО ' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Молоко (Товар)'
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И таблица "Список" содержит строки:
		| 'Наименование' |
		| 'Молоко1.jpg'   |
	И я закрываю все окна клиентского приложения