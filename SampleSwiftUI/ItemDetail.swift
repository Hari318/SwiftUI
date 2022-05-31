//
//  ItemDetail.swift
//  SampleSwiftUI
//
//  Created by SUMO on 10/05/22.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack{
            
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            NavigationLink(destination: OrderView()) {
                
                Button("Add item"){
                    order.add(item: item)
                }
            }
            .font(.headline)
            
            Spacer()
            
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}
