import SwiftUI

struct PrevAnswersView: View {
    @State var previousAnswers: [String] = []
//    @Binding var resultText: String
    var body: some View {
        
        
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                ForEach(previousAnswers, id: \.self) { result in
//                    Text(resultText)
//                        .font(.body)
//                        .padding(.vertical, 4)
                }
            }
            .padding()
        }
            .frame(width: 300, height: 500)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .padding(.horizontal)
    }
}
