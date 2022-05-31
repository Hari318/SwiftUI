//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by SUMO on 07/05/22.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){section in
                    Section(header: Text(section.name)){
                        ForEach(section.items){ item in
                            NavigationLink(destination: ItemDetail(item: item)){
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.insetGrouped)
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
        }
    }
}
