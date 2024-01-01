//
//  Padding.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 1.01.2024.
//

import SwiftUI

extension EdgeInsets {
    public static let paddingAll = EdgeInsets.init(top:2, leading: 5, bottom: 2, trailing: 5)
    
    public static let width = UIScreen.main.bounds.size.width
    public static let height = UIScreen.main.bounds.size.height
    
    // %6
    public static let vMedium = height * (0.06)
    
    // %2
    public static let hLow = width * (0.02)
    
    public static let circleWidth = width * (0.5)
    public static let circleHeight = height * (0.3)
}

