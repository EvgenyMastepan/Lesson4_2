//
//  Data.swift
//  Lesson4_2
//
//  Created by Evgeny Mastepan on 21.02.2025.
//

import Foundation

struct Physician: Identifiable{
    var id = UUID().uuidString
    let doctorFaceImg: String
    let doctorName: String
    let doctorSpec: String
    let doctorPrice: String
    let doctorTime: String
    
    static func mockData() -> [Physician]{
        [
        Physician(doctorFaceImg: "1_1", doctorName: "Чехов Антон Павлович", doctorSpec: "Терапевт", doctorPrice: "7,99", doctorTime: "9.00 am - 17.00 pm"),
        Physician(doctorFaceImg: "1_2", doctorName: "Хаус Грегори", doctorSpec: "Диагност", doctorPrice: "51,99", doctorTime: "12.00 am - 14.00 pm"),
        Physician(doctorFaceImg: "1_3", doctorName: "Вересаев Викентий Викентьевич", doctorSpec: "Терапевт", doctorPrice: "5,99", doctorTime: "9.00 am - 17.00 pm"),
        Physician(doctorFaceImg: "1_4", doctorName: "Авиценна", doctorSpec: "Эскулап", doctorPrice: "0,00", doctorTime: "10.00 am - 15.00 pm"),
        Physician(doctorFaceImg: "1_5", doctorName: "Пирогов Николай Иванович", doctorSpec: "Хирург", doctorPrice: "15,33", doctorTime: "9.00 am - 17.00 pm"),
        ]
    }
    
}
