//1 уровень сложности: В рамках БД "music" напишите след/запросы:

//Задание 1
//Вывести юзеров из France
db.users.find(
    {country: "France"}
)


//Задание 2
//Добавить несколько треков (tracks)
db.tracks.insertMany([
    {name: "Freeman", artist: "Miyagi", duration_secs: 194, created_at: "19.04.2018"},
    {name: "Perfect", artist: "Ed Sheeran", duration_secs: 173, created_at: "11.07.2020"},
    {name: "Let Her Go", artist: "Passenger", duration_secs: 201, created_at: "10.10.2023"},
    {name: "Take me to Church", artist: "Hozier", duration_secs: 196, created_at: "14.01.2021"},
    {name: "Roses", artist: "SAINt JNH", duration_secs: 187, created_at: "19.03.2019"}
])


//Задание 3
//Приведите десять типовых бизнес-процессов для интернет-магазина и их соответствие методам MongoDB
//
// 1. Создать аккаунт - insertOne()
// 2. Создать товар - insertOne()
// 3. Добавить товар в корзину - insertOne()
// 4. Удалить товар из корзины - deleteOne()
// 5. Авторизация аккаунта - findOne()
// 6. Блокировка пользователя - updateOne()
// 7. Редактирование профиля - updateOne()
// 8. Поиск товаров - find()
// 9. Оплата товарв - updateOne()
// 10. Оставить отзыв - insertOne()


//Задание 4
//Коротко приведите явные ошибки, допущенные при проектировании, в этой схеме БД
//https://dbdiagram.io/d/appwitherrors-65b740f2ac844320aee99837 
//
// 1) В таблице users вместо поля age должно быть поле birthday(дата рождения), 
// тк возраст - величина, которая изменяется каждую секунжу
// 2) Связь между таблицами users и reactions должна быть 1:N, 
// а не наоборот, как в данном случае(N:1)
// 3) Нужно добавить связь между таблицами tracks и reactions - 1:N,
// тк у трека может быть много реакцийы