//
//  Data.swift
//  ExpandableCellsSwiftUIExample
//
//  Created by Станислав Шияновский on 11/17/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import Foundation

public struct QuoteDataModel: Identifiable {
    public var id: String {
        return latin
    }
    
    public var latin: String
    public var russian: String
    public var expanded = false
}

public struct SectionDataModel: Identifiable {
    public var id: Character {
        return letter
    }
    
    public var letter: Character
    public var quotes: [QuoteDataModel]
    public var expanded = false
}

public class UserData : ObservableObject {
    @Published public var latinities : [SectionDataModel] = [
        SectionDataModel(letter: "C", quotes: [
            QuoteDataModel(latin: "Calvitium non est vitium, sed prudentiae indicium.", russian: "Лысина не порок, а свидетельство мудрости."),
            QuoteDataModel(latin: "Conjecturalem artem esse medicinam.", russian: "Медицина есть искусство догадок."),
            QuoteDataModel(latin: "Crede firmiter et pecca fortiter!", russian: "Верь крепче и греши смелее!")]),
        SectionDataModel(letter: "H", quotes: [
            QuoteDataModel(latin: "Homo sine religione sicut equus sine freno.", russian: "Человек без религии что лошадь без удил."),
            QuoteDataModel(latin: "Habet et musca splenem.", russian: "Разозлиться может и муха.")]),
        SectionDataModel(letter: "M", quotes: [
            QuoteDataModel(latin: "Malum est mulier, sed necessarium malum.", russian: "Хоть женщина и зло, но зло необходимое."),
            QuoteDataModel(latin: "Mulierem ornat silentium.", russian: "Женщину красит молчанье.")])]
}
