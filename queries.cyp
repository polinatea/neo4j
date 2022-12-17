
# Creating bus stops:
create (:bus_station{name: 'Ватутина'}),
	(:bus_station{name: 'Зелёная'}),
	(:bus_station{name: 'Анохина'}),
	(:bus_station{name: 'Мелентьевой'}),
	(:bus_station{name: 'Гагарина'}),
	(:bus_station{name: 'Кирова'}),
	(:bus_station{name: 'Калинина'}),
	(:bus_station{name: 'Ленина'}),
	(:bus_station{name: 'Красная'}),
	(:bus_station{name: 'Нагорная'}),
	(:bus_station{name: 'Полевой'}),
	(:bus_station{name: 'Репина'}),
	(:bus_station{name: 'Попова'}),
	(:bus_station{name: 'Парковая'}),
	(:bus_station{name: 'Ровио'}),
	(:bus_station{name: 'Товарная'}),
	(:bus_station{name: 'Советская'}),
	(:bus_station{name: 'Суворова'}),
	(:bus_station{name: 'Торнева'}),
	(:bus_station{name: 'Чапаева'}),
	(:bus_station{name: 'Шотмана'}),
	(:bus_station{name: 'Чехова'}),
	(:bus_station{name: 'Цветочная'})
  
  
# Creating organizations:

create (:organization{name: 'Школа №38', class:'Образование'}),
	(:organization{name: 'Лицей №40',class:'Образование'}),
	(:organization{name: 'ПетрГУ',class:'Образование'}),
	(:organization{name: 'Нац библиотека',class:'Образование'}),
	(:organization{name: 'Соц аптека', class:'Медицина'}),
	(:organization{name: 'Поликлиника №4', class:'Медицина'}),
	(:organization{name: 'Кардент', class:'Медицина'}),
	(:organization{name: 'Дента плюс', class:'Медицина'}),
	(:organization{name: 'Sun City', class:'Медицина'}),
	(:organization{name: 'Локон', class:'Красота'}),
	(:organization{name: 'Relax', class:'Красота'}),
	(:organization{name: 'Fantasy', class:'Красота'}),
	(:organization{name: 'В облаках', class:'Красота'}),
	(:organization{name: 'Лента',class:'Магазин'}),
	(:organization{name: 'Магнит',class:'Магазин'}),
	(:organization{name: 'Пятерочка',class:'Магазин'}),
	(:organization{name: 'Твоё',class:'Магазин'}),
	(:organization{name: 'Love Republic',class:'Магазин'}),
	(:organization{name: 'Bershka',class:'Магазин'}),
	(:organization{name: 'Фитнес империя', class:'Спорт'}),
	(:organization{name: 'Пирамида', class:'Спорт'}),
	(:organization{name: 'PozziFit', class:'Спорт'}),
	(:organization{name: 'Дежавю', class:'Отдых'}),
	(:organization{name: 'Фрегат', class:'Отдых'}),
	(:organization{name: 'Ягель', class:'Отдых'})	
  
#	Creating path between stops
match (a:bus_station), (b:bus_station)
where a.name = 'Ватутина' AND b.name = 'Зелёная'
create (a)-[r:path {route: "1", number:1, distance:7}]->(b)
