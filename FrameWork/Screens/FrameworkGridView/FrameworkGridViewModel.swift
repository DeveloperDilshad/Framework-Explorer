//
//  FrameworkGridViewModel.swift
//  FrameWork
//
//  Created by Dilshad P on 23/12/24.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
     let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
