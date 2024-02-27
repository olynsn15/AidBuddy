//
//  EmergencyType.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 17/07/23.
//

import Foundation

enum EmergencyType: Int {
    case lukaBakar = 0
    case mimisan = 1
    case terkilir = 2
    case TersengatLebah = 3
    
    var index: Int {
        return self.rawValue
    }
    
    var title: String {
        switch self {
        case .lukaBakar:
            return "Luka bakar"
        case .mimisan:
            return "Mimisan"
        case .terkilir:
            return "Terkilir"
        case .TersengatLebah:
            return "Tersengat lebah"
        }
    }
}
