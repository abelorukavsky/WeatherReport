//
//  WeatherScreenWeatherScreenPresenter.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 11/10/2022.
//  Copyright © 2022 inside.me. All rights reserved.
//

final class WeatherScreenPresenter: WeatherScreenViewOutput {

    // MARK: -
    // MARK: Properties

    weak var view: WeatherScreenViewInput!
    var interactor: WeatherScreenInteractorInput!
    var router: WeatherScreenRouterInput!

    // MARK: -
    // MARK: WeatherScreenViewOutput
    func viewIsReady() {

    }

}

// MARK: -
// MARK: WeatherScreenInteractorOutput
extension WeatherScreenPresenter: WeatherScreenInteractorOutput {


}

// MARK: -
// MARK: WeatherScreenModuleInput
extension WeatherScreenPresenter: WeatherScreenModuleInput {


}
