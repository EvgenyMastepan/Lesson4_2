//
//  ContentView.swift
//  Lesson4_2
//
//  Created by Evgeny Mastepan on 21.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Верхняя половина.
        VStack{
            HStack{
                Image(systemName: "text.below.photo")
                Image(systemName: "text.below.photo")
            }
            Text("Hello User")
            Text("Find your specialist")
            HStack{
                Text("Place")
                Text("Phone")
                Text("User")
            }
        }
        // Нижняя половина.
        
        
        
    }
}







//phone.fill  person.fill
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
