//
//  TabbedItem.swift
//  tabbar-experiment
//
//  Created by Usman Nazir on 05/01/2024.
//

import Foundation
import FloatingTabViewSwiftUI
import SwiftUI

enum TabbedItem: Int, FloatingTabItemProtocol {
    
    var id: Int { self.rawValue }
    
    case one
    case two
    case three
    
    var title: String {
        switch self {
        case .one:
            return "One"
        case .two:
            return "Two"
        case .three:
            return "Three"
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
        }
    }
    
    static func cases() -> [TabbedItem] {
        return allCases
    }
}
