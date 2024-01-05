//
//  TabbedItems.swift
//  tabbar-experiment
//
//  Created by Usman Nazir on 05/01/2024.
//

import Foundation
import SwiftUI

enum TabbedItem: Int, CaseIterable {
    case one
    case two
    case three
    case four
    
    var title: String {
        switch self {
        case .one:
            return "One"
        case .two:
            return "Two"
        case .three:
            return "Three"
        case .four:
            return "Four"
        }
    }
    
    var iconName: String {
        switch self {
        case .one:
            return "1.square.fill"
        case .two:
            return "2.square.fill"
        case .three:
            return "3.square.fill"
        case .four:
            return "4.square.fill"
        }
    }
    
    var tintColor: Color {
        switch self {
        case .one:
            return .red
        case .two:
            return .blue
        case .three:
            return .green
        case .four:
            return .yellow
        }
    }
}
