//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Артём Дмитриев on 30.05.2022.
//

import SwiftUI

struct LogOutButtonView: View {
  @EnvironmentObject var user: UserManager
  
  var body: some View {
    Button(action: logOutButtonTapped) {
      Text("Log Out")
        .font(.title)
        .fontWeight(.bold)
        .foregroundColor(.white)
    }
    .frame(width: 200, height: 60)
    .background(Color.blue)
    .foregroundColor(.white)
    .cornerRadius(20)
    .overlay(
      RoundedRectangle(cornerRadius: 20)
        .stroke(Color.black, lineWidth: 4)
    )
  }
  
  private func logOutButtonTapped() {
    user.isRegister.toggle()
    user.name = ""
  }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
