﻿#language: ru
@tree

@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Экспортные сценарии документа Заказ(подсистема Продажи)

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Открытие формы документа Заказ
* Открытие формы создания документа Заказ
	И я закрываю все окна клиентского приложения	
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'

Сценарий: Заполнение шапки документа Заказ	
* Заполнение шапки документа Заказ
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Средний'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'