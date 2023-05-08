//
//  NeumorphicView.swift
//  NeumorphicButtons
//
//  Created by Wintesolid Studios on 5/7/23.
//

import SwiftUI

struct NeumorphicView: View {
    
    @State private var selectedItem: String = ""
    
    let textArray = ["1) HOME","2) GARAGE","3) CAR","4) OFFICE","5) OTHER"]
    var body: some View {
        
        ZStack {
            
            Color(.lightGray).ignoresSafeArea()
            
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    Color(.lightGray)
                        .shadow(.inner( color: .white.opacity(0.7), radius: 5, x: -5, y: -5))
                        .shadow(.inner(color: Color(.lightGray).opacity(0.7), radius: 5, x: 5, y: 5))
                )
                .frame(width: 300, height: 300)
                .overlay{
                    
                    VStack(spacing: 15) {
                        
                        ForEach(textArray.indices, id: \.self) {
                            index in
                            
                            HStack {
                                
                                Circle()
                                    .fill(Color(.lightGray))
                                    .frame(width: 35, height: 35)
                                    .shadow(color: .white, radius: 5, x: -5, y: -5)
                                    .shadow(color: .gray.opacity(0.5),radius: 5, x: 5, y: 5)
                                
                                Text(textArray[index])
                                    .foregroundColor(selectedItem == textArray[index] ? Color.black : Color(.lightGray))
                                    .font(selectedItem == textArray[index] ?
                                        .system(.title3).bold() : .system(.title3))
                                    .padding(.leading, selectedItem == textArray[index] ? 20 : 10 )
                                
                                Spacer()
                            }
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                }
        }
    }
}

struct NeumorphicView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicView()
    }
}
