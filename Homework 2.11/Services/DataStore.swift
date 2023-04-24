//
//  DataStore.swift
//  Homework 2.11
//
//  Created by Iaroslav Beldin on 19.04.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let firstNames = [
        "Aiden",
        "Zoe",
        "Ethan",
        "Ava",
        "Noah",
        "Chloe",
        "Oliver",
        "Lila",
        "Lucas",
        "Sadie"
    ]
    
    let lastNames = [
        "Wolf",
        "Fox",
        "Bear",
        "Lion",
        "Tiger",
        "Leopard",
        "Gorilla",
        "Monkey",
        "Kangaroo",
        "Panda"
    ]
    
    let phoneNumbers = [
        "+1 (906) 436-77-90",
        "+44 (960) 587-89-01",
        "+49 (999) 638-90-12",
        "+81 (927) 749-01-23",
        "+86 (385) 890-16-36",
        "+971 (467) 901-25-45",
        "+55 (204) 012-44-57",
        "+852 (752) 122-45-62",
        "+65 (777) 214-56-28",
        "+61 (012) 385-37-39"
    ]
    
    let emails = [
        "bluewolf@mail.com",
        "silverfox@gmail.com",
        "grizzlybear@yahoo.com",
        "goldenlion@outlook.com",
        "whitetiger@icloud.com",
        "blackleopard@protonmail.com",
        "mightygorilla@aol.com",
        "clevermonkey@msn.com",
        "hoppykangaroo@live.com",
        "friendlypanda@yandex.com"
    ]
    
    private init() {}
}
