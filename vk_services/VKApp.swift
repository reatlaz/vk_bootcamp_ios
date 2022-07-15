//
//  VKApp.swift
//  vk_services
//
//  Created by Ринат Афиатуллов on 15.07.2022.
//

import UIKit

struct AppCategory {
    var title: String
    var apps: [VKApp]
}

struct VKApp {
    var icon: UIImage?
    var name: String
    var description: String
    var link: String
}

extension AppCategory {
    static var allApps: [AppCategory] {
        return [
        AppCategory(title: "Приложения", apps: [
            VKApp(icon: UIImage(named: "vk"),
                  name: "ВКонтакте",
                  description: "Самая популярная соцсеть и первое суперприложение в России",
                  link: "https://vk.com/"),
            
            VKApp(icon: UIImage(named: "mygames"),
                  name: "My.Games",
                  description: "Игры для ПК, консолей и смартфонов, в которые играют сотни миллионов геймеров",
                  link: "https://my.games/"),
            
            VKApp(icon: UIImage(named: "sferum"),
                  name: "Сферум",
                  description: "Онлайн-платформа для обучения и образовательных коммуникаций",
                  link: "https://sferum.ru/?p=start"),
            
            VKApp(icon: UIImage(named: "youla"),
                  name: "Юла",
                  description: "Сервис объявлений на основе геолокации и интересов",
                  link: "https://youla.ru/"),
            
            VKApp(icon: UIImage(named: "samokat"),
                  name: "Самокат",
                  description: "Онлайн-ретейлер с доставкой товаров за 15 минут",
                  link: "https://samokat.ru/"),
            
            VKApp(icon: UIImage(named: "citydrive"),
                  name: "Ситидрайв",
                  description: "Каршеринг-сервис в крупнейших российских городах",
                  link: "https://citydrive.ru/"),
            
            VKApp(icon: UIImage(named: "cloud"),
                  name: "Облако",
                  description: "Сервис для хранения файлов и совместной работы с ними",
                  link: "https://cloud.mail.ru/home/"),
            
            VKApp(icon: UIImage(named: "apteki"),
                  name: "Все аптеки",
                  description: "Онлайн-сервис для поиска и заказа лекарств по лучшей цене",
                  link: "https://vseapteki.ru/"),
            
            VKApp(icon: UIImage(named: "calendar"),
                  name: "Календарь",
                  description: "Планирование дня и эффективное управление временем",
                  link: "https://calendar.mail.ru/")
            
            ])
        ]
    }
}
