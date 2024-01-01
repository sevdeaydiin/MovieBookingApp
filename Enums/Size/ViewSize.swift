//
//  ViewSize.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 1.01.2024.
//

import SwiftUI

enum PagePadding {
    public static let width = UIScreen.main.bounds.size.width
    public static let height = UIScreen.main.bounds.size.height
    
    
    enum Vertical: Double {
        case normal = 16
    }
    enum Horizontal: Double {
        // 20
        case low = 20
    }
}

