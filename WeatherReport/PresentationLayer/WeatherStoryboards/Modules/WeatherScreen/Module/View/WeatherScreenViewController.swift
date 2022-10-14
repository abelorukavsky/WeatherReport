//
//  WeatherScreenWeatherScreenViewController.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 11/10/2022.
//  Copyright © 2022 inside.me. All rights reserved.
//

import UIKit
import CoreLocation

final class WeatherScreenViewController: UIViewController {

	// MARK: -
	// MARK: Properties
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    var output: WeatherScreenViewOutput!
    
    

	// MARK: -
	// MARK: Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		output.viewIsReady()
	}

}

// MARK: -
// MARK: WeatherScreenViewInput
extension WeatherScreenViewController: WeatherScreenViewInput {

	func setupInitialState() {

	}

}
