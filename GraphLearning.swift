import SwiftUI

struct GraphLearningView: View {
   
    var body: some View {
        NavigationStack {
            NavigationLink("Try It Out"){
                graphingEquationsView()
            }
            
        }
    }
}

#Preview {
    GraphLearningView()
}
