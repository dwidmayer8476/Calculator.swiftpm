import SwiftUI

struct ExplanationView: View {
   
    var body: some View {
        NavigationStack {
            NavigationLink("Learn to add, subtract, multiply, and divide") {
                addSubDivMultView()
            }
            .font(.largeTitle)
    
            NavigationLink("Learn Trigonometry") {
                trigView()
            }
            .font(.largeTitle)
            .padding(50)
            NavigationLink("Learn Right Triangles") {
                rightTrianglesLearningView()
            }
            .font(.largeTitle)
            .padding(50)
            NavigationLink("Learn Graphing") {
                GraphLearningView()
            }
            .font(.largeTitle)
            .padding(50)
        }
    }
}
