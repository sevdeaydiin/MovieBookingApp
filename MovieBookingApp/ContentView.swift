//
//  ContentView.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 30.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tag(Tab.home)
                    BookingView()
                        .tag(Tab.location)
                    TicketView()
                        .tag(Tab.ticket)
                    Text("Category")
                        .tag(Tab.category)
                    Text("Profile")
                        .tag(Tab.profile)
                }
                CustomTabBar(currentTab: $currentTab)
            }.ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    ContentView()
}
