//
//  main.swift
//  PasswordTool
//
//  Created by Валерия Пономарева on 22.05.2026.
//

import Foundation

print("🔐 PASSWORD TOOL — 'генератор паролей'")

let passwordRange: ClosedRange<Int> = 4...20

struct PasswordConfig {
    let length: Int
}

func getLength() -> Int {
    while true {
        print("Enter length of password (4-20): ", terminator: "")
        guard let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines),
              let length = Int(input),
              passwordRange.contains(length) else {
            print("❌ Please enter a number from 4 to 20")
            continue
        }
        return length
    }
}

func generatePassword(config: PasswordConfig) -> String {
    let allChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let passwordChars = (0..<config.length).compactMap { _ in allChars.randomElement() }
    return String(passwordChars)
}

while true {
    let length = getLength()
    let password = generatePassword(config: PasswordConfig(length: length))
    print("🔑 Your password: \(password)")

    print("Generate another one? (y/n): ", terminator: "")
    let response = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    if response == "n" || response == "no" {
        print("👋 Goodbye!")
        break
    }
}

    


