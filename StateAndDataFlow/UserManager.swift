//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import Combine
import SwiftUI

class UserManager: ObservableObject {
  @AppStorage("isRegister") var isRegister = false
  @AppStorage("name") var name = ""
}

