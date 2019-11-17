//
//  ContentView.swift
//  ExpandableCellsSwiftUIExample
//
//  Created by Станислав Шияновский on 11/17/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import SwiftUI

public struct ContentView: View {
    
    @EnvironmentObject var userData : UserData
    
    private func sectionIndex(section: SectionDataModel) -> Int {
        userData.latinities.firstIndex(where: { $0.letter == section.letter })!
    }
    
    private func quoteIndex(section: Int, quote: QuoteDataModel) -> Int {
        return userData.latinities[section].quotes.firstIndex(where: { $0.latin == quote.latin })!
    }
    
    public var body: some View {
        List {
            ForEach(userData.latinities) { section in
                Section(header: HeaderView(section: section)
                    .onTapGesture {
                        self.userData.latinities[self.sectionIndex(section: section)].expanded.toggle()
                }, footer: EmptyView()) {
                    if section.expanded {
                        ForEach(section.quotes) { quote in
                            QuoteView(quote: quote)
                                .onTapGesture {
                                    let sectionIndex = self.sectionIndex(section: section)
                                    let quoteIndex = self.quoteIndex(section: sectionIndex, quote: quote)
                                    self.userData.latinities[sectionIndex].quotes[quoteIndex].expanded.toggle()
                            }
                        }
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}
