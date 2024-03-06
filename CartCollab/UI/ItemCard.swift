//
//  ItemCard.swift
//  CartCollab
//
//  Created by Ritwik on 3/5/24.
//

import SwiftUI

struct ItemCard: View {
    
    @State private var isTap: Bool = false
    
    let cornerRadius: CGFloat
    let width: CGFloat
    let height: CGFloat
    let bgColor: Color
    let elevation: CGFloat
    let views: () -> AnyView
    let click: () -> Void
    let longClick: () -> Void
    let focusColor: Color?
    
    init(
        cornerRadius : CGFloat = 16,
        width : CGFloat = CGFloat.infinity,
        height : CGFloat = 140,
        bgColor : Color = Color.white,
        focusColor: Color? = nil,
        elevation : CGFloat = 5,
        views: @escaping () -> AnyView,
        click: @escaping () -> Void = {},
        longClick: @escaping () -> Void = {}
    ) {
        self.cornerRadius = cornerRadius
        self.width = width
        self.height = height
        self.bgColor = bgColor
        self.focusColor = focusColor
        self.elevation = elevation
        self.views = views
        self.click = click
        self.longClick = longClick
    }
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(isTap ? focusColor ?? bgColor: bgColor)
                .frame(maxWidth: width,
                 maxHeight: height)
                .shadow(radius: elevation)
            VStack {
                views()
            }
            
        }
        .padding(20)
        .onTapGesture{}
        .onLongPressGesture(minimumDuration: 0.3, pressing: {
            pressing in isTap = pressing
        }, perform: { longClick() })
        
    }
}

#Preview {
    ItemCard(focusColor: Color(.systemBlue).opacity(0.2)) {
        AnyView(
            Text("wow")
        )
    }
}
