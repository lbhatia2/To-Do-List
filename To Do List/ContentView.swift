//
//  ContentView.swift
//  To Do List
//
//  Created by Lina Bhatia on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var things = ["First thing", "second thing", "third thing", "fourth thing", "fifth thing"]
    var body: some View {
        NavigationView{
        List{
            ForEach(things, id: \.self) {thing in
                Text(thing)}
            .onMove{indices , newOffset in
                things.move(fromOffsets: indices, toOffset: newOffset)
            }
            .onDelete{indexSet in
                things.remove(atOffsets: indexSet )
            }
            
        }
        .navigationBarTitle("things", displayMode: .inline)
        .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
