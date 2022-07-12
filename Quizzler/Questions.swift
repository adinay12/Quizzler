//
//  Questions.swift
//  Quizzler
//
//  Created by Adinay on 27/6/22.
//

import Foundation
import UIKit

enum Questions {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    
    
    var title: String {
        
        switch self { // self ищет внутри себя
        case .one:
            return "Is sky blue?"
        case .two:
            return "Are you sleepining?"
        case .three:
            return "Are you blond?"
        case .four:
            return "Море синего цвета?"
        case .five:
            return "Достопримечательностью Франции является Эйфелевая Башня?"
        case .six:
            return "Высота Эвереста - 8848 м?"
        case .seven:
            return "Глубина байкала 1642 м?"
        case .eight:
            return "Том Холланд родился 1996 года?"
        case .nine:
            return "Адольф Гитлер, покончил жизнь самоубийством?"
            
        }
    }
    
    
    var answers: String {
        switch self {
        case .one:
          return "Yes"
        case .two:
            return "No"
        case .three:
            return "Yes"
        case .four:
            return "No"
        case .five:
            return "Yes"
        case .six:
            return "Yes"
        case .seven:
            return "Yes"
        case .eight:
            return "Yes"
        case .nine:
            return "Yes"
        }
    }
   
}
