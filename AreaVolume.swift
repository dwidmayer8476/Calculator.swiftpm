import SwiftUI

struct AreaVolumeL: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack{
                Text("What is Area?")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("Area refers to the amount of space covered by a flat, two-dimensional surface. It is measured in square units, like square meters (m²) or square centimeters (cm²). For example, the area of a rectangle is found by multiplying its length by its width. Area helps us understand how much surface a shape takes up on a plane.")
                    .foregroundStyle(.white)
                    .font(.footnote)
                Text("What is Total Surface Area?")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("Total Surface Area (TSA) is the sum of the areas of all the faces or surfaces of a three-dimensional object. It represents the total amount of space covering the outside of the shape. For example, the TSA of a cube is the sum of the areas of its six square faces. TSA is measured in square units because it still refers to surface area, but for 3D shapes.")
                    .foregroundStyle(.white)
                    .font(.footnote)
                Text("What is Volume?")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("Volume measures how much space an object occupies in three dimensions. It tells you the capacity or the amount of space inside a solid shape, like a cube, cylinder, or sphere. Volume is measured in cubic units, such as cubic meters (m³) or cubic centimeters (cm³), and it helps in understanding how much substance a container can hold or how much space an object fills.")
                    .foregroundStyle(.white)
                    .font(.footnote)
                Text("When do you use Area?")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("You use area when you want to measure the size of flat surfaces or two-dimensional shapes. For instance, when painting a wall or laying down tiles, calculating the area helps you know how much paint or tiles you need to cover the surface. Area is useful in landscaping, fabric cutting, and any task involving flat surfaces.")
                    .foregroundStyle(.white)
                    .font(.footnote)
                Text("When do you use TSA")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("Total Surface Area (TSA) is used when dealing with three-dimensional objects, especially if you want to cover or wrap them. For example, when wrapping a gift box, TSA tells you how much wrapping paper is needed to cover the entire box. TSA is also important in manufacturing, packaging, and designing objects where surface coating or material use is relevant.")
                    .foregroundStyle(.white)
                    .font(.footnote)
                Text("When do you use volume?")
                    .foregroundStyle(.white)
                    .font(.system(size: 14, weight: .semibold))
                Text("You use volume when you want to find out how much space is inside a 3D object or container. This is useful when filling containers with liquids, storing materials, or calculating the capacity of tanks and rooms. Volume helps in cooking (measuring ingredients), shipping (container sizes), and engineering tasks involving fluid or air capacity.")
                    .foregroundStyle(.white)
                    .font(.footnote)
                Image("ATSAV")
                NavigationStack{
                    NavigationLink("See formulas") {
                        Formulas()
                    }
                }
            }
        }
    }
}


#Preview {
    AreaVolumeL()
}
