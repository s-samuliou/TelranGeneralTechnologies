//1 уровень сложности: В рамках БД "music" напишите след/запросы:

//Задание 1
//Вывести незаблокированных юзеров из Germany и USA
db.users.find(
    {country: {$in: ["Germany", "USA"]}, is_blocked: {$ne: true}} //filter
)

//Задание 2
//Вывести названия треков продолжительностью от 5 до 15 мин
db.tracks.find(
    {duration_secs: {$gte: 60 * 5, $lte: 60 * 15}}, //fiter
    {title: 1, _id: 0} //projection
)

//Задание 3
//Разблокировать юзеров не из Germany
db.users.updateMany(
    {country: {$ne: "Germany"}}, //filter
    {
        $set: {
            is_blocked: false
        }
    } //action
)

//Задание 4
//Увеличить баланс назаблокированных юзеров не из Germany на 150 EUR
db.users.updateMany(
    {country: {$ne: "Germany"}, is_blocked: {$ne: true}}, //filter
    {
        $inc: {
            balance: +150 
        }
    } //action
)

//Задание 5
//Опишите схему БД "соц/сеть" (юзеры, публикации, друзья, чаты)
//https://dbdiagram.io/d/samuliou_chat-65c7ab47ac844320aede0b54