//
//  Test.swift
//  Hike
//
//  Created by mohamed ramadan on 16/10/2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: EmptyView()) {
                    Text("Counter demo")
                }
                
                NavigationLink(destination: EmptyView()) {
                    Text("Favorite prime")
                }
            }
            .navigationTitle("state management")
        }
    }
}

#Preview {
    TestView()
}
