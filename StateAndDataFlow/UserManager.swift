//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import Foundation
import Combine
import SwiftUI

class UserManager: ObservableObject {
  @Published var isRegister = false
  @Published var name = ""
}

