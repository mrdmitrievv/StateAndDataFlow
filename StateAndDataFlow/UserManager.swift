//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import Foundation
import Combine

class UserManager: ObservableObject {
  @Published var isRegister: Bool {
    didSet {
      UserDefaults.standard.set(isRegister, forKey: "isRegister")
    }
  }
  var name: String {
    didSet {
      UserDefaults.standard.set(name, forKey: "userName")
    }
  }
  
  var userNameCount: Bool {
    name.count >= 3
  }
  
  init() {
    self.isRegister = UserDefaults.standard.bool(forKey: "isRegister")
    self.name = UserDefaults.standard.string(forKey: "userName")!
  }
}

