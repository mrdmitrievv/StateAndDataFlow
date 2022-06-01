//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct RegisterView: View {
  @EnvironmentObject var user: UserManager
  @State private var name = ""
  @State private var charactersCounter = 0
  @State private var counterColor: Color = .red
  
  var body: some View {
    VStack {
      HStack {
        TextField("Enter your name", text: $name)
          .multilineTextAlignment(.center)
        Text("\(charactersCounter)")
          .foregroundColor(counterColor)
          .onChange(of: name, perform: countNameCharacters)
      }
      .padding()
      Button(action: registerUser) {
        Image(systemName: "checkmark.circle")
        Text("Ok")
      }
      .disabled(charactersCounter >= 3 ? false : true)
    }
  }
   
  private func registerUser() {
    if !name.isEmpty && charactersCounter >= 3 {
      user.name = name
      user.isRegister.toggle()
    }
  }
  
  private func countNameCharacters(printedName: String) {
    charactersCounter = printedName.count
    
    counterColor = charactersCounter >= 3 ? .green : .red
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
