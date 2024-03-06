import Foundation
//import Firebase

class CartItem: ObservableObject {
    let id: String
    @Published var name: String = ""
    @Published var type: String = ""
    @Published var imageID: String = ""
    
    required init?(
        id: String,
        data: [String: Any]
    ) {
        let name = data["name"] as? String != nil ? data["name"] as! String: ""
        let type = data["type"] as? String != nil ? data["type"] as! String: ""
        let imageID = data["imageID"] as? String != nil ? data["imageID"] as! String: ""
        
        self.id = id
        self.name = name
        self.type = type
        self.imageID = imageID
    }
}
