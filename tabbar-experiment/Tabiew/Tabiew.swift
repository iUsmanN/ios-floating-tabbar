//
//  Tabiew.swift
//  tabbar-experiment
//
//  Created by Usman Nazir on 05/01/2024.
//

import SwiftUI

struct Tabiew<Content: View>: View {
    
    @State var selected: Int = 0
    
    let content: Content
    let tabs: any TabItemProtocol.Type
    
    init(tabItems: any TabItemProtocol.Type, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.tabs = tabItems
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selected) {
                content
            }
            
            ZStack{
                HStack{
                    ForEach((TabbedItem.allCases), id: \.self){ item in
                        Button{
                            selected = item.rawValue
                        } label: {
                            tabiewItem(item: item, active: (selected == item.rawValue))
                                .padding(.horizontal, 5)
                                .shadow(color: item.tintColor, radius: (selected == item.rawValue) ? 25 : 0)
                        }
                    }
                }
                .padding(15)
            }
            .frame(height: 70)
            .background(.ultraThinMaterial)
            .cornerRadius(25)
            //            .padding(5)
        }
    }
    
    @ViewBuilder
    func tabiewItem(item: TabbedItem, active: Bool) -> some View {
        VStack (spacing: 2) {
            Image(systemName: item.iconName)
                .renderingMode(.template)
                .frame(width: 20, height: 25)
            Text(item.title)
        }
        .foregroundStyle(!active ? .primary : item.tintColor)
        .frame(width: 60)
        .cornerRadius(30)
    }
}

#Preview {
    Tabiew(tabItems: TabbedItem.self) {
        One()
            .tag(0)
        Two()
            .tag(1)
        Three()
            .tag(2)
        Four()
            .tag(3)
    }
}
