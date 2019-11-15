//
//  UpdateStore.swift
//  TutorialApp
//
//  Created by Chris Gregori on 15/11/2019.
//  Copyright © 2019 Chris Gregori. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore : ObservableObject {
    @Published var updates : [Update] = updateData
}
