
import SwiftUI
struct graphingEquationsView: View {
    @State var graph = ""
    @State var equation = ""
    var body: some View {
        VStack{
            Text("Graphing Calculator")
                .font(.largeTitle)
                .padding()
            Spacer()
            
            VStack {
                Text("y =")
                TextField("e.g. x+2", text: $equation)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                VStack{
                    
                    GraphView()
                        .frame(height: 300)
                    
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
    }
}
#Preview {
    graphingEquationsView()
}
