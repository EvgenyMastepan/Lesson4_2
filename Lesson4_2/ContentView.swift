//
//  ContentView.swift
//  Lesson4_2
//
//  Created by Evgeny Mastepan on 21.02.2025.
//

import SwiftUI

struct ContentView: View {
    let mockData = Physician.mockData()
    let userName = "Adventurer"
    
    var body: some View {
        
        VStack{
            //Верхняя половина.
            VStack(alignment: .leading){
                HStack{
                    Button{
                        //Кнопка меню
                    } label: {
                        Image("1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }
                    Spacer()
                    Button{
                        //Кнопка профиля
                    } label: {
                        Image("2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                    }
                    
                }
                Text("Hello " + userName)
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.vertical, 10)
                Text("Find your specialist")
                    .font(.system(size: 32, weight: .semibold))
                    .padding(.vertical, 10)
                HStack(alignment: .center){
                    VStack(spacing: 10){
                        Image(systemName: "location.north.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42, height: 42, alignment: .center)
                            .foregroundStyle(.white)
                        Text("Place")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 120, height: 120)
                    .background(Color.blue.opacity(0.6))
                    .clipped()
                    .cornerRadius(20)
                    
                    Spacer()
                    VStack(spacing: 10){
                        Image(systemName: "phone.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42, height: 42, alignment: .center)
                            .foregroundStyle(.white)
                        Text("Phone")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 120, height: 120)
                    .background(Color.teal.opacity(0.6))
                    .clipped()
                    .cornerRadius(20)
                    
                    Spacer()
                    VStack(spacing: 10){
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42, height: 42, alignment: .center)
                            .foregroundStyle(.white)
                        Text("User")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 120, height: 120)
                    .background(Color.pink.opacity(0.5))
                    .clipped()
                    .cornerRadius(20)
                }
                .padding(.vertical, 20)
                HStack(alignment: .center){
                    Text("Top doctor")
                        .font(.system(size: 25, weight: .semibold))
                    Spacer()
                    Button{
                     // Кнопка "А можно всех посмотреть?"
                    } label: {
                    Text("See all")
                        .font(.system(size: 14))
                        .foregroundStyle(.teal)
                    }
                }
                .padding(.vertical, 20)
            }
            // Нижняя половина.
            VStack{
                ScrollView(){
                    
                    ForEach(mockData) { item in
                        PhysicianItem(item: item)
                    }
                }
            }
            // Конец нижней половины
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(Color(.systemGray6))
        
    }
}



//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
