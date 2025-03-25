import SwiftUI

struct ContentView: View {
    @State private var humanAge: String = ""
    @State private var dogAge: String = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.green]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Image("cachorrofila")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)

                Text("Calculadora de Idade Canina")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                TextField("Digite a idade humana", text: $humanAge)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width: 250)

                Button(action: calculateDogAge) {
                    Text("Calcular")
                        .padding()
                        .frame(width: 150)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Button(action: clearFields) {
                    Text("Limpador 3.0")
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                

                if !dogAge.isEmpty {
                    Text("Idade em anos caninos: \(dogAge)")
                        .font(.headline)
                        .padding()
                }
            }
        }
    }

    func calculateDogAge() {
        if let age = Int(humanAge) {
            let result = age * 7
            dogAge = "\(result) anos"
        } else {
            dogAge = "Digite um número válido"
        }
    }
    
    func clearFields() {
        humanAge = ""
        dogAge = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

