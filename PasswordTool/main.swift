//
//  main.swift
//  PasswordTool
//
//  Created by Валерия Пономарева on 22.05.2026.
//

import Foundation

print("🔐 PASSWORD TOOL — 'генератор паролей'")
print(" user вводит длину пароля. Проверка: число? в диапазоне 4–20? → если нет, ошибка. Генерация пароля (a-z, A-Z, 0-9). Вывод пароля. Цикл: 'Сгенерировать ещё? (да/нет)'")

func getLength() -> Int {
    while true { // // Цикл будет повторяться, пока не сработает return
        // MARK: - 1️⃣ Сначала выводим подсказку в консоль
        print("Enter length of password (4 - 20): ", terminator: "")
        
        // MARK: - 2️⃣ Затем считываем ввод пользователя
        let prompt = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // MARK: - Шаг 3️⃣ Проверка ввода
        guard let prompt = prompt, let length = Int(prompt),
              length >= 4 && length <= 20 else {
            print("❌ Length is out of range. enter correct number")
            continue
        }
        print("✅ Length is correct")
        return length
    }
}

func generatePassword(length: Int) -> String {
    
    
    
    
    return ""
}

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


func generatePassword(length: Int) -> String {
    return ""
}
func main() {
    
}
