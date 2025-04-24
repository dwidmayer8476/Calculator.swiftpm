import SwiftUI

struct GraphLearningView: View {
   
    var body: some View {
        NavigationStack {
            Text("What is Graphing?")
                .font(.largeTitle)
            Text("Graphing is plotting lines on a coordinate plane that represent mathematical equations. An example of this is just a straight line travelling horizontaly. This could be represented by the equation  y = 0x + 2. This means that the line has a slop of zero meaning it doessn't go up (slope formula is rise / run = slope) and it has a y intercept of 2 meaning it travels through the y axis at the coordinate (0,2). There are also many other equations you can even use it to plot circles.")
            NavigationLink("Try It Out"){
                graphingEquationsView()
            }
            
            
        }
    }
}

#Preview {
    GraphLearningView()
}
