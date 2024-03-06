//
//  CartListView.swift
//  CartCollab
//
//  Created by Ritwik on 3/1/24.
//

import SwiftUI

struct CartListView: View {
    @EnvironmentObject private var app: AppVariables
    // Find "AppVariables" (with global visibility)
    // and treat it as a global variable, which is being observed in this context.
    
    @State private var count = 8 // TODO: just for debugging
    @State var items: [CartItem] = [
        CartItem(id: "1", data: ["name" : "Cart Item 1", "type" : "Food", "imageID" : "fork.knife.circle"])!,
        CartItem(id: "2", data: ["name" : "Cart Item 2", "type" : "Hardware", "imageID" : "hammer.circle"])!,
        CartItem(id: "3", data: ["name" : "Cart Item 3", "type" : "Tools", "imageID" : "wrench.and.screwdriver"])!,
        CartItem(id: "4", data: ["name" : "Cart Item 4", "type" : "Food", "imageID" : "fork.knife.circle"])!,
        CartItem(id: "5", data: ["name" : "Cart Item 5", "type" : "Hardware", "imageID" : "hammer.circle"])!,
        CartItem(id: "6", data: ["name" : "Cart Item 6", "type" : "Food", "imageID" : "fork.knife.circle"])!,
        CartItem(id: "7", data: ["name" : "Cart Item 7", "type" : "Food", "imageID" : "fork.knife.circle"])!
    ]
    var body: some View {
        
        let list  = ScrollView {
            ForEach(items, id: \.self.id) {
                (item: CartItem) in CartItemController(cartItem: item)
            }
        }
        
        let fab = VStack {
            Spacer()
            Button(action: clickAdd, label: {
                Text("+")
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                                          .fill(Color(.systemBlue))
                                          .frame(width: 50, height: 50)
                    )
                    .font(.system(.largeTitle))
                    .foregroundColor(Color.white)
            }).ignoresSafeArea()
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 25, trailing: 25))
        }
        
        VStack {
            Text("Cart Collab")
                .font(.system(size: 50, weight: .bold))
            ZStack {
                list
                HStack {
                    Spacer()
                    fab
                }
            }
            
        }
    }
    
    private func clickAdd() {
        items.append(CartItem(id: "\(count)", data: ["name" : "Cart Item \(count)", "type" : "Food", "imageID" : "fork.knife.circle"])!)
        count+=1
    }
}

#Preview {
    CartListView()
}
