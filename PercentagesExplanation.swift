import SwiftUI

struct PercentagesExplanation: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack{
                Text("What Are Percentages?")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                Text("A percentage is a way of expressing a number as a part of 100. It shows how much out of every 100 something represents. For example, if you have 30%, it means 30 out of every 100, or 30%. Percentages make it easy to compare different amounts because they all relate back to the same whole — 100. You can convert percentages to decimals by dividing by 100, or to fractions by placing the number over 100.")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
                Text("How are they used?")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                Text("Percentages are used everywhere in everyday life to help us understand proportions and compare quantities. For instance, they are used to calculate discounts when shopping, such as 25% off the price of an item. They also show interest rates on loans or savings, how much of a test you got right, or what portion of a population likes a certain product. By using percentages, it’s easier to communicate and understand how parts relate to a whole in a clear and simple way.")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
                
                NavigationStack {
                    NavigationLink("Try it out"){
                        PercentageView()
                    }
                    .foregroundStyle(.cyan)
                }
            }
        }
    }
}

#Preview {
    PercentagesExplanation()
}
