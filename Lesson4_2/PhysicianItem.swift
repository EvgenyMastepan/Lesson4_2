//
//  PhysicianItem.swift
//  Lesson4_2
//
//  Created by Evgeny Mastepan on 21.02.2025.
//

import SwiftUI

struct PhysicianItem: View {
    let item: Physician
    var body: some View {
        HStack{
            Image(item.doctorFaceImg)
                .resizable()
                .scaledToFit()
                .frame(width: 82, height: 82, alignment: .leading)
                .clipped()
                .cornerRadius(20)
                .padding(5)
            LazyVStack(alignment: .leading, spacing: 5){
                Text(item.doctorName)
                Text(item.doctorSpec)
                    .font(.system(size: 14))
                    .foregroundStyle(.gray)
                HStack{
                    Image(systemName: "clock")
                        .foregroundStyle(.teal)
                    Text(item.doctorTime)
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                }
                HStack{
                    Text("$ " + item.doctorPrice)
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Button{
                        //Кнопка назначения приёма.
                    } label: {
                        Text("Appointment")
                            .font(.system(size: 14))
                            .padding(.vertical, 5)
                            .padding(.horizontal, 30)
                            .foregroundStyle(.white)
                    }
                    .background(.teal)
                    .clipShape(Capsule())
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
        .background(.white)
        .clipped()
        .cornerRadius(20)
    }
}
