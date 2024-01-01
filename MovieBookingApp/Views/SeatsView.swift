//
//  SeatsView.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 1.01.2024.
//

import SwiftUI

struct SeatsView: View {
    
    // go back
    @Environment(\.dismiss) var dismiss
    // circle animation
    @State var animate: Bool = false
    // button showing
    @State var showButton: Bool = true

    var body: some View {
        VStack(spacing: 0.0) {
            
            // nav bar design
            HStack {
                // back button
                CircleButton(action: {
                    dismiss()
                }, image: "arrow.left")
                
                Spacer()
                
                Text("Choose Seats") 
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Spacer()
    
                // calendar button
                CircleButton(action: {}, image: "calendar")
            }
            .padding(.top, EdgeInsets.vMedium)
            .padding(.horizontal, EdgeInsets.hLow)
            
            
            Image("frontSeat")
                .padding(.top, EdgeInsets.vMedium)
                .glow(color: Color("pink"), radius: 20)
            
            // seats
            Image("seats")
                .frame(height: EdgeInsets.height * 0.24)
                .padding(.top, EdgeInsets.vMedium)
                .padding(.horizontal, EdgeInsets.hLow)
                // select seats
                .onTapGesture {
                    withAnimation(.spring()) {
                        showButton = true
                    }
                }
            
            // seats type name
            HStack(spacing: EdgeInsets.hLow) {
                StatusUI()  // empty
                StatusUI(color: Color("majenta"), text: "Reserved") // reserved
                StatusUI(color: Color("cyan"), text: "Selected")  // selected
            }
            .padding(.top, EdgeInsets.vMedium)
            
            Spacer()
            
            // ticket info card
            ZStack(alignment: .topLeading) {
                
                // background animate purple circle
                Circle()
                    .frame(width: EdgeInsets.circleWidth, height: EdgeInsets.circleHeight)
                    .foregroundColor(Color("purple"))
                    .blur(radius: animate ? 70 : 100)
                    .offset(x: animate ? -100 : 20, y: animate ? -20 : 20)
                    .task {
                        withAnimation(.easeInOut(duration: 7).repeatForever()) {
                            animate.toggle()
                        }
                    }
                // background animate light blue circle
                Circle()
                    .frame(width: EdgeInsets.circleWidth, height: EdgeInsets.circleHeight)
                    .foregroundColor(Color("lightBlue"))
                    .blur(radius: animate ? 50 : 100)
                    .offset(x: animate ? 50 : 70, y: animate ? 70 : 30)
                    .task {
                        withAnimation(.easeInOut(duration: 7).repeatForever()) {
                            animate.toggle()
                        }
                    }
                // background animate pink circle
                Circle()
                    .frame(width: EdgeInsets.circleWidth, height: EdgeInsets.circleHeight)
                    .foregroundColor(Color("pink"))
                    .blur(radius: animate ? 70 : 100)
                    .offset(x: animate ? 150 : 170, y: animate ? 90 : 100)
                    .task {
                        withAnimation(.easeInOut(duration: 2).repeatForever()) {
                            animate.toggle()
                        }
                    }
                
                // ticket info text
                VStack(alignment: .leading, spacing: 30.0) {
                    //date
                    HStack(spacing: 10.0) {
                        Image(systemName: "calendar")
                        Text("April 28 , 2022")
                        Circle()
                            .frame(width: 6, height: 6)
                        Text("6 p.m.")
                    }
                    //seats
                    HStack(spacing: 10.0) {
                        Image(systemName: "ticket.fill")
                        Text("VIP Section")
                        Circle()
                            .frame(width: 6, height: 6)
                        Text("Seat 9 ,10")
                    }
                    // total pay
                    HStack(spacing: 10.0) {
                        Image(systemName: "cart.fill")
                        Text("Total: $30")
                    }
                }
                .padding(42)
                .font(.subheadline)
                
                // buy button
                HStack {
                    Spacer()
                    RoundButton(action: {
                        NavigationUtil.popToRootView()  // navigation pop to first root
                    })
                }
                .frame(maxHeight: EdgeInsets.height * 0.23)
            }
            .frame(maxWidth: .infinity, maxHeight: EdgeInsets.height * 0.23, alignment: .topLeading)
            .clipped()
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
            .padding(.top, 60)
            .offset(y: showButton ? 0 : 250)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("backgroundColor"))
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

struct SeatsView_Previews: PreviewProvider {
    static var previews: some View {
        SeatsView()
    }
}
