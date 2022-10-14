//
//  CitiesTableCitiesTableAssemblyContainer.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 13/10/2022.
//  Copyright © 2022 insede.me. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class CitiesTableAssemblyContainer: Assembly {

	func assemble(container: Container) {
		container.register(CitiesTableInteractor.self) { (r, presenter: CitiesTablePresenter) in
			let interactor = CitiesTableInteractor()
			interactor.output = presenter

			return interactor
		}

		container.register(CitiesTableRouter.self) { (r, viewController: CitiesTableViewController) in
			let router = CitiesTableRouter()
			router.transitionHandler = viewController

			return router
		}

		container.register(CitiesTablePresenter.self) { (r, viewController: CitiesTableViewController) in
			let presenter = CitiesTablePresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(CitiesTableInteractor.self, argument: presenter)
			presenter.router = r.resolve(CitiesTableRouter.self, argument: viewController)

			return presenter
		}

		container.storyboardInitCompleted(CitiesTableViewController.self) { r, viewController in
			viewController.output = r.resolve(CitiesTablePresenter.self, argument: viewController)
		}
	}

}
