import SwiftUI

struct explanationsView: View {
   
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
        }
    }
}
