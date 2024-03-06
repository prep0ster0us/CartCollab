import SwiftUI

struct CartItemController: View {
    
    @ObservedObject var cartItem: CartItem
    
    var body: some View {
        ItemCard(
            cornerRadius : 16,
            width : CGFloat.infinity,
            height : 150,
            bgColor : Color.white,
            focusColor: Color(.systemTeal).opacity(0.1),
            elevation : 3,
            views: {
                AnyView(
                    HStack {
                        Image(systemName: cartItem.imageID)
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .padding(20)
                        Spacer()
                        VStack {
                            Text(cartItem.name)
                            Text(cartItem.type)
                        }
                        Spacer()
                    }
                )
            },
            click: clickCartItem,
            longClick: longClickCartItem
            )
    }
    
    private func clickCartItem() {
        
    }
    private func longClickCartItem() {
        
    }
}

#Preview {
    CartItemController(cartItem:
                        CartItem(id: "1", data: ["name" : "Cart Item 1", "type" : "Food", "imageID" : "fork.knife.circle"])!
    )
}
