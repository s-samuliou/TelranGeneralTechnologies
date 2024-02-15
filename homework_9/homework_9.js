//1 уровень сложности: 

//Задание 1
//1. Завершить с помощью инструмента онлайн-проектирования создание схемы БД "платежная система" (юзеры, счета, транзакции)
//https://dbdiagram.io/d/paypal-65ca836fac844320aefcad85

//Задание 2
//2. Используя метод aggregate(), в рамках БД music вывести названия трех самых продолжительных треков
db.tracks.aggregate([
    {
        $sort: {
            duration_secs: -1
        }  
    },
    {
        $project: {
            title: 1, _id: 0
        }
    },
    {
        $limit: 3
    }    
])

//Задание 3
//3. Используя метод aggregate(), в рамках БД music вывести имя одного случайного юзера не из USA
db.users.aggregate([
    {
        $match: {
            country: {$ne: "Germany"}
        }
    },
    {
        $project: {
            fullname: 1, _id: 0
        }
    },
    {
        $sample: { 
            size: 1
        }
    },
])