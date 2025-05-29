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
                //need pic
                
                NavigationLink("Learn Trigonometry") {
                    trigView()
                    
                }
                .padding(20)
                NavigationLink("Learn pi (π)") {
                    piLearn()
                }
                //need pic
                .padding(20)
                NavigationLink("Learn Right Triangles") {
                    rightTrianglesLearningView()
                }
                
                .padding(20)
                NavigationLink("Learn Graphing") {
                    GraphLearningView()
                }
                
                .padding(20)
                
                NavigationLink("Learn Squares And Sqaure Roots") {
                    SquareLearning()
                }
                NavigationLink("Learn Percentages(%)") {
                    PercentagesExplanation()
                }
                .padding(20)
               
                NavigationLink("Learn Area And Volume") {
                    AreaVolumeL()
                }
                .padding(20)
            }
            .font(.system(size: 32, weight: .semibold))
        }
    }
}
#Preview {
    ExplanationView()
}
