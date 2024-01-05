//
//  ContentView.swift
//  tabbar-experiment
//
//  Created by Usman Nazir on 05/01/2024.
//

import SwiftUI
import FloatingTabViewSwiftUI

struct ContentView: View {
    var body: some View {
        FloatingTabView(tabItems: TabbedItem.self) {
            One()
                .tag(0)
            Two()
                .tag(1)
            Three()
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
