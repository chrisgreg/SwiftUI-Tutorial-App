//
//  MenuComponent.swift
//  TutorialApp
//
//  Created by Chris Gregori on 21/02/2020.
//  Copyright © 2020 Chris Gregori. All rights reserved.
//

import SwiftUI

struct MenuComponent: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Chris - 83% complete")
                    .font(.caption)
                
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
                
                MenuRowItem(title: "Account", icon: "gear")
                MenuRowItem(title: "Billing", icon: "creditcard")
                MenuRowItem(title: "Sign out", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8957253886, green: 0.8957253886, blue: 0.8957253886, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Illustration4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .offset(y: -150)
            )
        }
        .padding(.bottom, 30)
    }
}

struct MenuComponent_Previews: PreviewProvider {
    static var previews: some View {
        MenuComponent()
    }
}

struct MenuRowItem: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.4403478024, green: 0.7534564809, blue: 1, alpha: 1)))
            
            Text(title)
                .font(.system(size: 25, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
