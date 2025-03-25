# 🐶 Calculadora de Idade Canina

Este é um aplicativo desenvolvido em **SwiftUI** que permite calcular a idade de um cachorro com base na idade humana fornecida pelo usuário. 

## 📌 Funcionalidades
- Inserir a idade humana e converter para idade canina.
- Botão para calcular a idade.
- Botão para limpar os campos.
- Interface com gradiente e elementos estilizados.

## 🖥️ Tecnologias Utilizadas
- Swift
- SwiftUI
- Xcode

## 📸 Captura de Tela
![Captura de Tela](link-da-imagem-no-repo)

## 🚀 Como Executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/calculadora-idade-canina.git
   ```
2. Abra o projeto no **Xcode**.
3. Execute no simulador ou dispositivo físico.

## 🔧 Código-Fonte Principal
Aqui está um trecho do código principal:
```swift
func calculateDogAge() {
    if let age = Int(humanAge) {
        let result = age * 7
        dogAge = "\(result) anos"
    } else {
        dogAge = "Digite um número válido"
    }
}
```

## 📜 Licença
Este projeto está licenciado sob a [MIT License](LICENSE).

---
💡 **Dúvidas ou sugestões?** Fique à vontade para abrir uma issue ou contribuir com melhorias! 😊
