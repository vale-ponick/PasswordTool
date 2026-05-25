//  main.swift

//  PasswordTool
//
//  Created by Валерия Пономарева on 22.05.2026.
//

import Foundation

print("🔐 PASSWORD TOOL — Генератор паролей")

// MARK: - Constants

private let passwordRange: ClosedRange<Int> = 4...21
private let allCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

// MARK: - Models

struct PasswordConfig {
    let length: Int
}

// MARK: - Functions

/// Запрашивает у пользователя длину пароля, проверяет ввод.
/// - Returns: Корректную длину пароля (Int)
func getLength() -> Int {
    while true {
        print("Enter length of password (\(passwordRange.lowerBound)-\(passwordRange.upperBound)): ", terminator: "")
        
        guard let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines),
              let length = Int(input),
              passwordRange.contains(length) else {
            print("❌ Please enter a number from \(passwordRange.lowerBound) to \(passwordRange.upperBound)")
            continue
        }
        return length
    }
}

/// Генерирует случайный пароль заданной длины.
/// - Parameter config: Конфигурация пароля (длина)
/// - Returns: Случайная строка из букв и цифр
func generatePassword(config: PasswordConfig) -> String {
    let passwordChars = (0..<config.length).compactMap { _ in allCharacters.randomElement() }
    return String(passwordChars)
}

// MARK: - Main Loop

while true {
    let length = getLength()
    let password = generatePassword(config: PasswordConfig(length: length))
    print("🔑 Your password: \(password)")
    
    print("Generate another one? (y/n): ", terminator: "")
    let response = readLine()?
        .trimmingCharacters(in: .whitespacesAndNewlines)
        .lowercased()
    
    if response == nil || response == "" {
        print("❌ Please enter y or n")
        continue
    }
    
    if ["n", "no", "exit", "quit"].contains(response) {
        print("👋 Goodbye!")
        break
    }
}

 /* 🔐 PASSWORD TOOL — Генератор паролей
  Enter length of password (4-21): 7
  🔑 Your password: tTgISLN
  Generate another one? (y/n): yes
  Enter length of password (4-21): 21
  🔑 Your password: hjrDcOjyYUUMhp7BxaUF8
  Generate another one? (y/n): no
  👋 Goodbye! */


