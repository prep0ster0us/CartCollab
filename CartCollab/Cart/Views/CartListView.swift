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
    var body: some View {
        Text("Cart List View")
    }
}

#Preview {
    CartListView()
}
