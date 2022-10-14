//
//  WeatherScreenWeatherScreenAssemblyContainer.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 11/10/2022.
//  Copyright © 2022 inside.me. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class WeatherScreenAssemblyContainer: Assembly {

	func assemble(container: Container) {
		container.register(WeatherScreenInteractor.self) { (r, presenter: WeatherScreenPresenter) in
			let interactor = WeatherScreenInteractor()
			interactor.output = presenter

			return interactor
		}

		container.register(WeatherScreenRouter.self) { (r, viewController: WeatherScreenViewController) in
			let router = WeatherScreenRouter()
			router.transitionHandler = viewController

			return router
		}

		container.register(WeatherScreenPresenter.self) { (r, viewController: WeatherScreenViewController) in
			let presenter = WeatherScreenPresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(WeatherScreenInteractor.self, argument: presenter)
			presenter.router = r.resolve(WeatherScreenRouter.self, argument: viewController)

			return presenter
		}

		container.storyboardInitCompleted(WeatherScreenViewController.self) { r, viewController in
			viewController.output = r.resolve(WeatherScreenPresenter.self, argument: viewController)
		}
	}

}
