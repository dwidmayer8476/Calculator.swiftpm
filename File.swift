import SwiftUI

struct explanationsView: View {
   
    var body: some View {
        NavigationStack {
            NavigationLink("Learn to add, subtract, and multiply") {
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
