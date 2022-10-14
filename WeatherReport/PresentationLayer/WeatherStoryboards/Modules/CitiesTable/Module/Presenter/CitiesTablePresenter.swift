//
//  CitiesTableCitiesTablePresenter.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 13/10/2022.
//  Copyright © 2022 insede.me. All rights reserved.
//

final class CitiesTablePresenter: CitiesTableViewOutput {

    // MARK: -
    // MARK: Properties

    weak var view: CitiesTableViewInput!
    var interactor: CitiesTableInteractorInput!
    var router: CitiesTableRouterInput!

    // MARK: -
    // MARK: CitiesTableViewOutput
    func viewIsReady() {

    }

}

// MARK: -
// MARK: CitiesTableInteractorOutput
extension CitiesTablePresenter: CitiesTableInteractorOutput {


}

// MARK: -
// MARK: CitiesTableModuleInput
extension CitiesTablePresenter: CitiesTableModuleInput {


}
