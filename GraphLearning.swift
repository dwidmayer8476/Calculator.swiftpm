import SwiftUI

struct GraphLearningView: View {
   
    var body: some View {
        NavigationStack {
            
            
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                
                VStack{
                    Text("What is Graphing?")
                        .font(.largeTitle)
                    Text("Graphing is plotting lines on a coordinate plane that represent mathematical equations. An example of this is just a straight line travelling horizontally. This could be represented by the equation of y = x + 2. This means that the line has a slope of zero, meaning it doesn't go up (slope formula is rise / run = slope) and it has a y intercept of 2 meaning it travels through the y axis at the coordinate (0,2). There are also many other equations you can even use it to plot circles.")
                    NavigationLink("Try It Out"){
                        graphingEquationsView()
                    }
                    .foregroundStyle(.cyan)
                    
                    
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    GraphLearningView()
}
