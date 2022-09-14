//
//  ContentView.swift
//  CW5
//
//  Created by Fatima Garashi on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var userStatus : String = ""
    @State var emojis : [String] = ["😇", "😌", "🤓", "😡", "🤪", "🤨", "🥰", "😳", "😤", "🤯", "😙", "😂"]
   // @State var selectedItem : Int = 0


    var body: some View {
        
        VStack {
            Spacer()
            Text("اختار الإيموجي الي يعبر عنك اليوم")
                .font(.system(size: 30))
            Spacer()
            Text(userStatus)
                .font(.system(size: 100))
            Spacer()

            ScrollView (.horizontal) {
                HStack{
                    ForEach(emojis, id:\.self){emoji in
                        Text(emoji)
                            .frame(width: 85, height: 85)
                            .background(Color(
                                red: 0xFF / 255,
                                green: 0xe5 / 255,
                                blue: 0x99 / 255))
                            .clipShape(Circle())
                            .clipShape(Circle())
                            .font(.system(size: 60))
                            .onTapGesture {
                                userStatus = emoji
                                //selectedItem = emojis.firstIndex(where: { $0.hasPrefix(emoji) }) ?? 0
                            }
                    }
                }
                
            }
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
