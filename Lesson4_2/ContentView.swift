//
//  ContentView.swift
//  Lesson4_2
//
//  Created by Evgeny Mastepan on 21.02.2025.
//

import SwiftUI
    var userName: String = "Adventurer"

struct ContentView: View {
    
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
                Text("Hello "/*, userName*/)
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.vertical, 20)
                Text("Find your specialist")
                    .font(.system(size: 32, weight: .semibold))
                    .padding(.vertical, 10)
                HStack(alignment: .center, spacing: 10){
                    Text("Place")
                        .foregroundStyle(.blue)
                    Spacer()
                    Text("Phone")
                        .foregroundStyle(.teal)
                    Spacer()
                    Text("User")
                        .foregroundStyle(.pink)
                }
                .padding(.vertical, 20)
                HStack(alignment: .center){
                    Text("Top doctor")
                        .font(.system(size: 25, weight: .semibold))
                    Spacer()
                    Button{
                     // See all.
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
                    HStack{
                        Image("1_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 82, height: 82, alignment: .leading)
                            .clipped()
                            .cornerRadius(20)
                            .padding(5)
//                        Spacer()
                        VStack(alignment: .leading, spacing: 5){
                            Text("User name")
                            Text("Lorem ipsum")
                                .font(.system(size: 14))
                                .foregroundStyle(.gray)
                            HStack{
                                Image(systemName: "clock")
                                    .foregroundStyle(.teal)
                                Text("10.40 am - 2.40 pm")
                                    .font(.system(size: 14))
                                    .foregroundStyle(.gray)
                            }
                            HStack{
                                Text("$10.50")
                                    .font(.system(size: 14))
                                    .foregroundStyle(.gray)
                                Spacer()
                                Button{
                                    //Кнопка назначения приёма.
                                } label: {
                                    Text("Appointment")
                                        .font(.system(size: 14))
                                        .foregroundStyle(.white)
                                }
                                .background(.teal)
                                
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 5)
                    .padding(.vertical, 10)
                    .background(.white)
                    .clipped()
                    .cornerRadius(20)
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







//phone.fill  person.fill
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
