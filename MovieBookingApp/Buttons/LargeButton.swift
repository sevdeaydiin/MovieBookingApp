//
//  LargeButton.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 1.01.2024.
//

import SwiftUI

struct LargeButton: View {
    var selectedBorderColors: [Color] = [Color("pink"), Color("pink").opacity(0), Color("pink").opacity(0)]
    
    var body: some View {
        Text("Reservation")
            .font(.body)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 60)
            .background(LinearGradient(colors: [Color("majenta"), Color("purple")], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(LinearGradient(colors: selectedBorderColors, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
                    .frame(maxWidth: .infinity, maxHeight: 58)
            }
    }
}

#Preview {
    LargeButton()
}
