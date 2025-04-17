
import SwiftUI
struct graphingEquationsView: View {
    @State var graph = ""
    var body: some View {
            VStack{
                Text("Graphing Calculator")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                
                TextField("Input your equation", text: $graph)
                    .textFieldStyle(.roundedBorder)
                
                Spacer()
               
                NavigationStack{
                    NavigationLink("Go to Graph") {
                        GraphView()
                    
                           
                    }
                }
                
            }
            .font(.largeTitle)
            
        
    }
}
