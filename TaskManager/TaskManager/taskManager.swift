//
//  taskManager.swift
//  TaskManager
//
//  Created by Giorgi Manjavidze on 29.08.25.
//

import SwiftUI

class taskManager: ObservableObject {
  @Published var tasks: [String] = ["Apple", "Orange"]
}
