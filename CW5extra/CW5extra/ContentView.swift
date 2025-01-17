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
                Text("ادخل الطول والوزن")
                    .font(.system(size: 30)).padding()
                TextField("الطول", text: $height)
                    .multilineTextAlignment(.center)
                    .padding()
                TextField("الوزن", text: $weight)
                    .multilineTextAlignment(.center)
                    .padding()
                Button("احسب") {
                    
                    bmi = "BMI = \(calculateBmi(height: Double(height) ??  0.0, weight: Double(weight) ?? 0.0 ))"
                    if calculateBmi(height: Double(height) ??  0.0, weight: Double(weight) ?? 0.0 ) <= 20 {
                        status = "ضعيف"
                    } else if calculateBmi(height: Double(height) ??  0.0, weight: Double(weight) ?? 0.0 ) <= 25{
                        status = "جيد"
                    } else {
                        status = "سمين"
                    }
                }.frame(width: 200, height: 50)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                Text(bmi)
                    .font(.system(size: 30))
                    .padding()
                Text(status)
                    .font(.system(size: 30))
                    .padding()


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
