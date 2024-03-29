//
//  TicketData.swift
//  MovieBookingApp
//
//  Created by Sevde Aydın on 30.12.2023.
//

import Foundation

struct TicketModel: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var subtitle: String
    var top: String
    var bottom: String
}

var tickets: [TicketModel] = [
    TicketModel(image: "thor", title: "Thor", subtitle: "Love and Thunder", top: "thor-top", bottom: "thor-bottom"),
    TicketModel(image: "panther", title: "Black Panther", subtitle: "Wakanda Forever", top: "panther-top", bottom: "panther-bottom"),
    TicketModel(image: "scarlet", title: "Doctor Strange", subtitle: "In the multiverse of Madness", top: "scarlet-top", bottom: "scarlet-bottom")
]
