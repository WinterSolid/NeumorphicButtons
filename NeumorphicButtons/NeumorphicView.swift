//
//  NeumorphicView.swift
//  NeumorphicButtons
//
//  Created by Wintesolid Studios on 5/7/23.
//

import SwiftUI

struct NeumorphicView: View {
    let offWhiteColor = Color(red: 236/255, green: 234/255, blue: 235/255)
    let shadowColor = Color(red: 197/255, green: 197/255, blue: 197/255)
    var body: some View {
        ZStack {
            offWhiteColor
                .ignoresSafeArea()
            VStack {
                Text("WINTERSOLID STUDIOS")
                    .font(.largeTitle)
                
                Button(action: {}){
                    Image(systemName: "snowflake")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(25)
                        .foregroundColor(Color.red)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(
                                    .shadow(.inner(color: shadowColor,radius: 3, x:3, y: 3))
                                    .shadow(.inner(color: .white, radius: 3, x: -3, y: -3))
                                )
                            
                                .foregroundColor(offWhiteColor))
                    
                }
                
            }
            
        }
        
    }
}


struct NeumorphicView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicView()
    }
}
