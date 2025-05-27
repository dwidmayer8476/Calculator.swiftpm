import SwiftUI

struct ExplanationView: View {
   
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            
            NavigationStack {
                NavigationLink("Learn to add, subtract, multiply, and divide") {
                    addSubDivMultView()
                }
                
                
                NavigationLink("Learn Trigonometry") {
                    trigView()
                        
                }
                .padding(50)
                NavigationLink("Learn pi (π)") {
                    piLearn()
                }
                
                .padding(50)
                NavigationLink("Learn Right Triangles") {
                    rightTrianglesLearningView()
                }
                
                .padding(50)
                NavigationLink("Learn Graphing") {
                    GraphLearningView()
                }
                
                .padding(50)
                
                NavigationLink("Learn Squares And Sqaure Roots") {
                    SquareLearning()
                }
            }
            .font(.system(size: 32, weight: .semibold))
        }
    }
}
#Preview {
    ExplanationView()
}
