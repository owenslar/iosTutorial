//
//  FlyingNumber.swift
//  Memorize
//
//  Created by Owen Larson on 4/25/25.
//

import SwiftUI

struct FlyingNumber: View {
    let number: Int
    
    var body: some View {
        if number != 0 {
            Text(number, format: .number)
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
