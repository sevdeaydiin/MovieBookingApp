//
//  CircleBackground.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 30.12.2023.
//

import SwiftUI

struct CircleBackground: View {
    @State var color: Color = Color("greenCircle")
    var body: some View {
        Circle()
            .frame(width: 300, height: 300)
            .foregroundColor(color)
    }
}

#Preview {
    CircleBackground()
}
