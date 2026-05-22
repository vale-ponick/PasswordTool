//
//  main.swift
//  PasswordTool
//
//  Created by Валерия Пономарева on 22.05.2026.
//

import Foundation

print("🔐   1️⃣ PASSWORD TOOL — 'генератор паролей': user вводит длину пароля. Проверка: число? в диапазоне 4–20? → если нет, ошибка. Генерация пароля (a-z, A-Z, 0-9). Вывод пароля. Цикл: 'Сгенерировать ещё? (да/нет)'")

      /* Что ты используешь: 🔐 🔤 🔢 ❌ 🔄 📝 🔥

      ✅ guard let для опционалов
      ✅ throws / do-catch для ошибок
      ✅ Массив символов + .randomElement()
      ✅ Цикл while -
            Запросить длину
            Сгенерировать пароль
            Спросить «Ещё? (y/n)»*/

// 2️⃣ Введите длину пароля (4-20):

// ❌ Ошибка: введите число от 4 до 20

// 2️⃣ Введите длину пароля (4-20): 8

// 5️⃣ 🔐 Ваш пароль: aK7mR2qZ

// 6️⃣ Сгенерировать ещё? (y/n): n

// 7️⃣ 👋 By, vale.ponick!

func getLength() throws -> Int {
    return 0
}
func generatePassword(length: Int) -> String {
    return ""
}
func main() {
    return
}
