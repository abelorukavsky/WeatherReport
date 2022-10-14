//
//  ItemObject.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 13.10.2022.
//

import Foundation
import RealmSwift

class ItemObject: Object {
    @Persisted var name: String = ""
}
