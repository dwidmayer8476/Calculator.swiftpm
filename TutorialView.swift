import SwiftUI

struct TutorialView: View {
    
    var body: some View {
        TabView{
            T1View()
            T2View()
            T3View()
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}
#Preview {
    TutorialView()
}
struct T1View: View {
    @AppStorage("hasSeenTutorial") private var hasSeenTutorial: Bool = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue.gradient)
            VStack{
                Text("Welcome To Calculator")
                Image(systemName: "hand.wave.fill")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundStyle(.white)
        }
        .frame(width: 400, height: 400)
    }
}

#Preview {
    T1View()
}

struct T2View: View {
    @AppStorage("hasSeenTutorial") private var hasSeenTutorial: Bool = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue.gradient)
            VStack{
                Text("This app has 3 main functions: to act as a calculator, to graph equations, and to have a seperate page to explain mathematical equations and operations")
                
            }
            .foregroundStyle(.white)
        }
        .frame(width: 400, height: 400)
    }
}

#Preview {
    T2View()
}

struct T3View: View {
    @AppStorage("hasSeenTutorial") private var hasSeenTutorial: Bool = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue.gradient)
            VStack{
                Button("tap to begin using") {
                    hasSeenTutorial = true
                }
                .buttonStyle(.borderedProminent)
            }
            
        }
        .frame(width: 400, height: 400)
       
    }
}

#Preview {
    T3View()
}
