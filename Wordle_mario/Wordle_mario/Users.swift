//
//  Users.swift
//  Wordle_mario
//
//  Created by  on 2/3/22.
//

import Foundation
import SwiftUI

struct User: Codable, Identifiable {
    var id: String = UUID().uuidString
    var nombre: String?
}
