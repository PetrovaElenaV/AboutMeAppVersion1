//
//  Person.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 08.10.2023.
//
struct Person {
    let name: String
    let surename: String
    let city: String
    let age: String
    let title: String
    let nameDogTima: String
    let nameDogLeva: String
    
    var fullName: String {
        "\(name) \(surename)"
    }
    
    var fullNameDog: String {
        "\(nameDogTima) и \(nameDogLeva) вместе на всегда 🐶"
    }
    
    static var getPerson: Person {
        Person(
            name: "Елена",
            surename: "Петрова",
            city: "Москва",
            age: "за 30 🤭",
            title: """
🏡 Родилась в понедельник 🫶🏼 на Дальнем Востоке нашей прекрасной страны.
    Детство и юность провела здесь, окруженная уникальной природой и интересными культурными традициями.
🌿📚
    С годами я решила расширить свой кругозор и обучиться разным профессиям.
🛫🏖️🏔️🏙️🛬
Путешествия и изучение различных городов стали неотъемлемой частью моей жизни, и каждое новое место приносило удивительные впечатления и знания.
🌆 🎓
Образование и опыт, накопленные на этом пути, сделали меня богаче и мудрее.
 👩🏻‍🏫 👨‍👩‍👦 👩🏻‍💻
Я убеждена, что путь поиска знаний и опыта бесконечен, и я всегда готова к новым приключениям. 🌟
""",
            nameDogTima:"Тима",
            nameDogLeva: "Лёва"
        )
    }
}
