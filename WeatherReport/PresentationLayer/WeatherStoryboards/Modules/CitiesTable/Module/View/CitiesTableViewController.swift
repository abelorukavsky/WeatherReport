//
//  CitiesTableCitiesTableViewController.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 13/10/2022.
//  Copyright © 2022 insede.me. All rights reserved.
//

import UIKit

final class CitiesTableViewController: UITableViewController {

	// MARK: -
	// MARK: Properties
	var output: CitiesTableViewOutput!

	// MARK: -
	// MARK: Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		output.viewIsReady()
	}
    
    private func configureTableView() {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(_:)), for: .valueChanged)
        tableView.refreshControl = refreshControl
    }
    
    @objc func refresh(_ refreshControl: UIRefreshControl) {
        output.didTriggerPullToRefresh()
    }

}

// MARK: -
// MARK: CitiesTableViewInput
extension CitiesTableViewController: CitiesTableViewInput {

	func setupInitialState() {

	}

}
