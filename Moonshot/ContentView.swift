//  How to lay out view in a scrolling grid

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 60, maximum: 120)),
        GridItem(.adaptive(minimum: 60, maximum: 120)),
        GridItem(.adaptive(minimum: 60, maximum: 120))
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
