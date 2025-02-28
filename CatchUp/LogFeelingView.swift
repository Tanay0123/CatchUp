import SwiftUI

struct LogFeelingView: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @Binding var isPresented: Bool
    
    // Write to object
    @State private var feelingSlide: Double = 3.0
    @State private var animatedFeelingIndex: Double = 3.0
    
    // MARK: - Body
    var body: some View {
        // Data structure for emotions and their corresponding text and emoji
        let feelings = [
            ("Very Unpleasant", "🤢"),
            ("Unpleasant", "😒"),
            ("Slightly Unpleasant", "😕"),
            ("Neutral", "😶"),
            ("Slightly Pleasant", "😌"),
            ("Pleasant", "😄"),
            ("Very Pleasant", "🤩")
        ]
        VStack {
            Text("How did you feel?")
                .fontDesign(.rounded)
                .fontWeight(.heavy)
                .font(.system(size: 32))
                .foregroundStyle(Color(.orange))
            Spacer()
            // Using the `Int(feelingSlide)` index to access the feelings array
            let feeling = feelings[Int(feelingSlide)]
            
            Text(feeling.1)
                .font(.system(size: 100))
                .fontDesign(.rounded)
                .fontWeight(.heavy)
            
            FeelingSlider(feelingSlide: $feelingSlide, onSlideChanged: { newSlide in
                withAnimation(.easeInOut(duration: 0.2)) {
                    animatedFeelingIndex = newSlide
                }
            })
            .padding()
            
            Text(feelings[Int(animatedFeelingIndex)].0)
                .font(.system(size: 19))
                .contentTransition(.numericText())
                .fontDesign(.rounded)
                .fontWeight(.heavy)
                .foregroundStyle(Color(red: 1.0, green: 0.7, blue: 0.2))
            
            Spacer()
            NavigationLink {
                LogReflectionView(isPresented: $isPresented).navigationBarBackButtonHidden(true)
                
                // TO DO:
                // Pass $feelingSlide to arrayOfReflections.end
            } label: {
                Text("Next")
                    .fontDesign(.rounded)
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .foregroundStyle(Color.white)
            .buttonStyle(.borderedProminent)
            .tint(Color(.orange))
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // 3
                        dismiss()
                    } label: {
                        // 4
                        Image(systemName: "chevron.left")
                    }
                    .buttonStyle(.bordered)
                    .foregroundStyle(Color.buttonText)
                    .fontWeight(.medium)
                    .fontDesign(.rounded)
                    .clipShape(Circle())
                }
            }
        }
        .background(Color.catchUpYellow.edgesIgnoringSafeArea(.all))
    }
}

struct FeelingSlider: View {
    @Binding var feelingSlide: Double
    var onSlideChanged: (Double) -> Void // Add closure
    let feelings = [
        ("Very Unpleasant", "🤢"),
        ("Unpleasant", "😒"),
        ("Slightly Unpleasant", "😕"),
        ("Neutral", "😶"),
        ("Slightly Pleasant", "😌"),
        ("Pleasant", "😄"),
        ("Very Pleasant", "🤩")
    ]
    
    let colors: [Color] = [
        Color(red: 0.7, green: 0.9, blue: 1.0), // Light Blue
        Color(red: 0.2, green: 0.6, blue: 1.0), // Blue
        Color(red: 1.0, green: 0.9, blue: 0.5), // Yellow
        Color(red: 1.0, green: 0.7, blue: 0.2), // Orange (Center)
        Color(red: 1.0, green: 0.4, blue: 0.2), // Red
        Color(red: 0.7, green: 0.3, blue: 0.8), // Purple
        Color(red: 0.5, green: 0.2, blue: 0.7)  // Darker Purple
    ]
    
    @State private var sliderHeight: CGFloat = 20
    @State private var isDragging = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background Gradient
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
                    .frame(height: sliderHeight)
                    .cornerRadius(sliderHeight / 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: sliderHeight / 2)
                            .stroke(Color.white, lineWidth: 2)
                    )
                
                // Notches (excluding ends)
                ForEach(1..<feelings.count - 1, id: \.self) { index in
                    let xPosition = CGFloat(index) / CGFloat(feelings.count - 1) * geometry.size.width
                    Circle()
                        .frame(width: 4, height: sliderHeight * 0.7)
                        .foregroundColor(.white)
                        .position(x: xPosition, y: sliderHeight / 2)
                }
                
                // Knob
                let knobPosition = CGFloat(feelingSlide) / CGFloat(feelings.count - 1) * geometry.size.width
                Circle()
                    .fill(colors[Int(feelingSlide)])
                    .overlay(
                        Circle()
                            .strokeBorder(Color.white, lineWidth: 6)
                    )
                    .frame(width: sliderHeight * 1.5, height: sliderHeight * 1.5)
                    .position(x: knobPosition, y: sliderHeight / 2)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                isDragging = true
                                withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                                    sliderHeight = 30
                                }
                                let newValue = Double(value.location.x / geometry.size.width) * Double(feelings.count - 1)
                                feelingSlide = max(0, min(Double(feelings.count - 1), newValue))
                                onSlideChanged(feelingSlide) // Call closure
                            }
                            .onEnded { _ in
                                isDragging = false
                                withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                                    sliderHeight = 20
                                }
                            }
                    )
            }
        }
        .frame(height: sliderHeight)
    }
}
