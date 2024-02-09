//
//  Note.swift
//  Notes Watch App
//
//  Created by Lucas on 05/02/24.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
