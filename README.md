[![Python CI](https://github.com/AdrianusWest/api_notification_service/actions/workflows/pyci.yml/badge.svg)](https://github.com/AdrianusWest/api_notification_service/actions/workflows/pyci.yml)
[![Maintainability](https://api.codeclimate.com/v1/badges/475801c9e86334c1fc2e/maintainability)](https://codeclimate.com/github/AdrianusWest/api_notification_service/maintainability)


# Сервис уведомлений

Сервис разработан с использованием DRF (Django Rest Framework), Celery и Flower.

## Установка и запуск

### Установка:
```
git clone https://github.com/AdrianusWest/api_notification_service
cd ./api_notification_service
make install
```

### Переменные окружения

Чтобы приложение работало, необходимо создать файл .env в корне проекта.

Затем откройте этот файл и установите любое значение для SECRET_KEY='anything'.

Если вы хотите включить режим отладки, то установите для параметра DEBUG=True

В файл .evn ввести нужный токен: ```TOKEN = '<your token>'```
 
### Миграции

```
make migrate
```

### Запуск приложения

```
make runserver
```

***
```http://127.0.0.0:8000/api/``` - api проекта

```http://127.0.0.0:8000/api/clients/``` - клиенты

```http://127.0.0.0:8000/api/mailings/``` - рассылки

```http://127.0.0.0:8000/api/mailings/fullinfo/``` - общая статистика по всем рассылкам

```http://127.0.0.0:8000/api/mailings/<pk>/info/``` - детальная статистика по конкретной рассылке

```http://127.0.0.0:8000/api/messages/``` - сообщения

```http://127.0.0.0:8000/docs/``` - документация проекта

```http://127.0.0.0:5555``` - Celery Flower

***

**Техническое задание:** 
[https://www.craft.do/s/n6OVYFVUpq0o6L](https://www.craft.do/s/n6OVYFVUpq0o6L)

## Дополнительные задания

<p>Опциональные пункты, выполнение любого количества из приведённого списка повышают ваши шансы на положительное решение о приёме</p>
<ol>
<li>сделать так, чтобы по адресу <i> /docs/ </i> открывалась страница со Swagger UI и в нём отображалось описание разработанного API. Пример: <a href="https://petstore.swagger.io" target="_blank">https://petstore.swagger.io</a></li>
<li>реализовать администраторский Web UI для управления рассылками и получения статистики по отправленным сообщениям</li>
<li>удаленный сервис может быть недоступен, долго отвечать на запросы или выдавать некорректные ответы. Необходимо организовать обработку ошибок и откладывание запросов при неуспехе для последующей повторной отправки. Задержки в работе внешнего сервиса никак не должны оказывать влияние на работу сервиса рассылок.</li>
<li>реализовать дополнительную бизнес-логику: добавить в сущность "рассылка" поле "временной интервал", в котором можно задать промежуток времени, в котором клиентам можно отправлять сообщения с учётом их локального времени. Не отправлять клиенту сообщение, если его локальное время не входит в указанный интервал.</li>
</ol>
