//
//  ContentView.swift
//  CartCollab
//
//  Created by Ritwik on 2/27/24.
//

import SwiftUI

class AppVariables: ObservableObject {
    // ObservableObject = accessible to anyone in the scope of the view
    // Published = global visibility, can be accessed from any view which 'observes' this class
    @Published var selectedTab: Int = 0
    
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
