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
                .padding(30)
                NavigationLink("Learn pi (π)") {
                    piLearn()
                }
                
                .padding(30)
                NavigationLink("Learn Right Triangles") {
                    rightTrianglesLearningView()
                }
                
                .padding(30)
                NavigationLink("Learn Graphing") {
                    GraphLearningView()
                }
                
                .padding(30)
                
                NavigationLink("Learn Squares And Sqaure Roots") {
                    SquareLearning()
                }
                NavigationLink("Learn Percentages(%)") {
                    PercentagesExplanation()
                }
                .padding(30)
            }
            .font(.system(size: 32, weight: .semibold))
        }
    }
}
#Preview {
    ExplanationView()
}
