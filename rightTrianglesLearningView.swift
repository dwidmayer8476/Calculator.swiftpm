import SwiftUI

struct rightTrianglesLearningView: View {
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack{
                    
                    Text("What Is A Right Triangle?")
                        .font(.largeTitle)
                    Text("A right triangle is a triangle where one of the angles is 90° or a right angle. all the angles added up should be equal to 180°. The side opposite of the right angles is called the hypotnuse. Right triangles are also used in trigonometry.")
                        .font(.footnote)
                    Text("Solving Right Triangles")
                        .font(.largeTitle)
                    Text("All angles should equal 180 added up. To find the length of the hypotnuse remeber the equation that is the Pythagoreom Theoreum. The equation is A^2 + B^2 = C^2, A is a leg, B is another leg, and C is the Hypotnuse. If 2 angles in the right triangle are 45° than each leg is isosclese meaning they are equal and each leg is x length and the hypotnuse would be x√2 long. If one angle is 30° and the other is 60° The side opposite of the 30° is X, The side opposite of the 60° is X root 3 long, and the hypotnuse is 2X. ")
                        .font(.footnote)
                    Image("RightTriangle")
                    NavigationLink("See how Right Triangles work into Trigonometry") {
                        trigView()
                    }
                    .foregroundStyle(.cyan)
                }
            }
            .foregroundStyle(.white)
        }
    }
}
#Preview {
    rightTrianglesLearningView()
}
