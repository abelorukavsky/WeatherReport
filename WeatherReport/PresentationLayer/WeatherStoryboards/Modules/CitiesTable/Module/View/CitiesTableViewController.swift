//
//  CitiesTableCitiesTableViewController.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 13/10/2022.
//  Copyright © 2022 insede.me. All rights reserved.
//

import UIKit

final class CitiesTableViewController: UIViewController {

	// MARK: -
	// MARK: Properties
	var output: CitiesTableViewOutput!

	// MARK: -
	// MARK: Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		output.viewIsReady()
	}

}

// MARK: -
// MARK: CitiesTableViewInput
extension CitiesTableViewController: CitiesTableViewInput {

	func setupInitialState() {

	}

}
