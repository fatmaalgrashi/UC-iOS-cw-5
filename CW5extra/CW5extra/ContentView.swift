//
//  ContentView.swift
//  CW5extra
//
//  Created by Fatima Garashi on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var height = ""
    @State var weight = ""
    @State var bmi = ""
    @State var status = ""



    var body: some View {
        VStack {
            VStack{
                Image("weighingmachine")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                Text("ادخل الطول والوزن").padding()
                TextField("الطول", text: $height).padding()
                TextField("الوزن", text: $weight).padding()
                Button("احسب") {
                    
                    bmi = "BMI = \(calculateBmi(height: Double(height) ??  0.0, weight: Double(weight) ?? 0.0 ))"
                }
                Text(bmi).padding()
                Text(status).padding()


            }
            
            
        }
       
    }

  
}
func calculateBmi(height : Double, weight: Double) -> Double {

    return weight / (height * height)

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
