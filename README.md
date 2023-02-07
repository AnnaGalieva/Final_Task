### Final_Task
### Задание
#### 1. Используя команду cat в терминале операционной системы Linux, создать два файла Домашние животные (заполнив файл собаками, кошками, хомяками) и Вьючные животными заполнив файл Лошадьми, верблюдами и ослы), а затем объединить их. Просмотреть содержимое созданного файла. Переименовать файл, дав ему новое имя (Друзья человека).

cat > домашние_животные

собаки
кошки
хомяки

cat > вьючные_животные

лошади
верблюды
ослы

cat домашние_животные вьючные_животные > друзья_человека

cat друзья_человека

#### 2. Создать директорию, переместить файл туда.

mv друзья_человека final_task

#### 3. Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория.

sudo apt install mysql-server mysql-client

sudo apt-get update


#### 4. Установить и удалить deb-пакет с помощью dpkg.
##### установка
wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb

sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb

sudo apt install mysql-server

sudo mysql_secure_installation

sudo mysql_secure_installation

sudo apt-get install mysql-workbench-community

##### удаление

sudo dpkg -s mysql-server

sudo dpkg -r mysql-workbench-community

sudo dpkg -r mysql-community-server


#### 5. Выложить историю команд в терминале ubuntu

см. выше

#### 6. Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и вьючные животные, в составы которых в случае домашних животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные войдут: Лошади, верблюды и ослы).


![Скриншот 07-02-2023 170258](https://user-images.githubusercontent.com/98036870/217266543-07aab9a2-baf9-4e0c-b9a7-61464bd35ef0.jpg)



#### 7. В подключенном MySQL репозитории создать базу данных “Друзья человека”
#### 8. Создать таблицы с иерархией из диаграммы в БД
#### 9. Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения
#### 10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
#### 11. Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице
#### 12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам.
#### 13. Создать класс с Инкапсуляцией методов и наследованием по диаграмме.
#### 14. Написать программу, имитирующую работу реестра домашних животных. В программе должен быть реализован следующий функционал:
#### 14.1 Завести новое животное
#### 14.2 определять животное в правильный класс
#### 14.3 увидеть список команд, которое выполняет животное
#### 14.4 обучить животное новым командам
#### 14.5 Реализовать навигацию по меню
#### 15. Создайте класс Счетчик, у которого есть метод add(), увеличивающий̆ значение внутренней̆ int переменной̆ на 1 при нажатии “Завести новое животное” Сделайте так, чтобы с объектом такого типа можно было работать в блоке try-with-resources. Нужно бросить исключение, если работа с объектом типа счетчик была не в ресурсном try и/или ресурс остался открыт. Значение считать в ресурсе try, если при заведении животного заполнены все поля.
