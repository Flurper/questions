import SwiftUI
struct ContentView: View {
    
    @State var nothing = 0
    @State var nothingnumber = false
    var body: some View {
        
        VStack {
            Button("💸💸Money Printer💸💸", action: {
                nothing = nothing + 1
            })
            .font(.largeTitle)
            .bold()
            .foregroundColor(.green)
            Text("\(nothing)")
                .font(.largeTitle)
                .bold()
            Button("💰Your vault💰", action: {
                nothingnumber = true

            })
            .alert(isPresented: $nothingnumber) {
                Alert(title: Text("you have"), message: Text("💵\(nothing) Dollars💵"))
            }
            
            .padding()
            .bold()
            .font(.title)
            .foregroundColor(.black)
        }
        
    }
}


#Preview {
    ContentView()
}
