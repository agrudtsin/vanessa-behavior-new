# Vanessa Flow

порядок коллективной разработки

## Базовые приницпы

* продукт для разработки через поведение, должен сам разрабатываться через поведение
* на системах контроля исходного кода, хранится исходный код
* бинарные версии инструментов выпускаются и хранятся как артефакты релизов
* в проекте существуют 2 защищенные ветки куда запрещено помещать код без pull requestoв

## Матрица операций и скриптов

| Операция / Фаза                           | Первая доработка  | Очередная доработка | Исправление ошибки | Выпуск релиза |
|-------------------------------------------|-------------------|---------------------|--------------------|---------------|
| Клонирование или обновление               | git clone & pull  | git branch feature/*|                    |               |
| Инициализация сервисной базы              | tools\init.sh     |                     |                    |               |
| Компиляция актуальных сервисных обработок | tools\compile.sh  |                     |                    |               |
| Доработка по BDD                          | tools\open1c.sh   |                     |                    |               |
| Проверка разработчиком                    | tools\tests.sh    |                     |                    |               |
| Декомпиляция изменений кода и метаданных  | tools\decompile.sh|                     |                    |               |
| Публикация изменений                      | git push my-fork  |                     |                    |               |

## Примечания

* предполагается что вы знакомы с GitFlow
* мы думаем что вы уже знаете что такой `OScript`
* предполагается что вы уже умеете кодировать на 1С - то есть в курсе как в этом мире работать
