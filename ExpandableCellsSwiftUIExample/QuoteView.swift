//
//  QuoteView.swift
//  ExpandableCellsSwiftUIExample
//
//  Created by Станислав Шияновский on 11/17/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import SwiftUI

public struct QuoteView: View {
    public var quote: QuoteDataModel
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(quote.latin)
                .font(.title)
            if quote.expanded {
                Group() {
                    Divider()
                    Text(quote.russian).font(.body)
                }
            }
        }
    }
}
