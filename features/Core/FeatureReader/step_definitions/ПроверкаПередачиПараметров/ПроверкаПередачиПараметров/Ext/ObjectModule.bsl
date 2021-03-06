﻿//начало текста модуля

Перем Ванесса;


Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции


Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюШагСПараметром(Парам01)","ЯВыполняюШагСПараметром","я выполняю шаг с параметром 1");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучаюВПроцедуруПараметрТипа(Парам01)","ЯПолучаюВПроцедуруПараметрТипа","я получаю в процедуру параметр типа ""Число""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ИЭтотПараметрЯвляетсяПустойДатой()","ИЭтотПараметрЯвляетсяПустойДатой","Тогда И этот параметр является пустой датой");

	Возврат ВсеТесты;
КонецФункции


Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры


Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



//я выполняю шаг с параметром 1
//@ЯВыполняюШагСПараметром(Парам01)
Процедура ЯВыполняюШагСПараметром(Параметр) Экспорт
	ПереданныйТип = ТипЗнч(Параметр);
	Контекст.Вставить("ПереданныйТип",ПереданныйТип);
	Контекст.Вставить("ПереданныйПараметр",Параметр);
КонецПроцедуры


//я получаю в процедуру параметр типа "Число"
//@ЯПолучаюВПроцедуруПараметрТипа(Парам01)
Процедура ЯПолучаюВПроцедуруПараметрТипа(ИмяТипа) Экспорт
	ПереданныйТип = Контекст.ПереданныйТип;
	Ванесса.ПроверитьРавенство(ПереданныйТип,Тип(ИмяТипа),"Был предан параметр нужного типа.");
КонецПроцедуры

//окончание текста модуля  

//Тогда И этот параметр является пустой датой
//@ИЭтотПараметрЯвляетсяПустойДатой()
Процедура ИЭтотПараметрЯвляетсяПустойДатой() Экспорт
	Ванесса.ПроверитьРавенство(Контекст.ПереданныйПараметр,'00010101',"Должная быть пустая дата");
КонецПроцедуры
