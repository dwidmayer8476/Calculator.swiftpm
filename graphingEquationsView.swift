
import SwiftUI
import SafariServices
import WebKit

struct graphingEquationsView: View {
    @State var graph = ""
    @State var equation = ""
    let desmosURL = URL(string: "https://www.desmos.com/calculator")!
    var body: some View {
        VStack{
            
            Link("Try out in seperate tab", destination: desmosURL)
            
            
            SafariView(url: desmosURL)
        }
    }
    
    struct SafariView: UIViewControllerRepresentable {
        let url: URL
        
        func makeUIViewController(context: Context) -> SFSafariViewController {
            SFSafariViewController(url: url)
        }
        
        func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
            
        }
    }
}





#Preview {
    graphingEquationsView()
}

//OLD CODE FROM GRAPH

//VStack{
//    Text("Graphing Calculator")
//        .font(.largeTitle)
//        .padding()
//    Spacer()
//    
//    VStack {
//        Text("y =")
//        TextField("e.g. x+2", text: $equation)
//            .textFieldStyle(.roundedBorder)
//            .padding(.horizontal)
//        VStack{
//            
//            GraphView()
//                .frame(height: 300)
//            
//            Spacer()
//            
//            NavigationStack{
//                NavigationLink("Go to Graph") {
//                    GraphView()
//                }
//                
//            }
//        }
//        
//    }
//    .font(.largeTitle)
//    
//    
//}
