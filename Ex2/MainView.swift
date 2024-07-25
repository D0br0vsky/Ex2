//
//  ContentView.swift
//  Ex2
//
//  Created by Dobrovsky on 23.07.2024.
//

import SwiftUI

// Главный экран
struct MainView: View { // Определяем структуру ContentView, которая соответствует протоколу View
    var body: some View { // Свойство body определяет содержимое интерфейса
        NavigationStack { // Используем NavigationStack для управления навигацией между экранами
            VStack { // Используем VStack для вертикального размещения элементов
                Text("Главный экран") // Создаем текстовый элемент с надписью "Главный экран"
                    .font(.largeTitle) // Устанавливаем размер шрифта для текста
                    .padding() // Добавляем отступы вокруг текста
                
                // Фигура (например, круг), на которую можно нажать для перехода
                HStack{
                    NavigationLink(destination: SecondView()) { // Создаем ссылку для перехода на SecondView
                        ButtonForSecondView()
                    }
                    NavigationLink(destination: ThirdView()) { // Создаем ссылку для перехода на SecondView
                        ButtonForThirdView()
                    }
                    .padding() // Добавляем отступы вокруг круга
                }
            }
           // .navigationTitle("Главный экран") // Устанавливаем заголовок навигации для этого экрана
        }
    }
}

#Preview {
    MainView()
}
