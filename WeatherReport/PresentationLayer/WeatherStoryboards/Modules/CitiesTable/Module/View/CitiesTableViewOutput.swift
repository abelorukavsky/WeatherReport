//
//  CitiesTableCitiesTableViewOutput.swift
//  WeatherReport
//
//  Created by Anton Belorukavsky on 13/10/2022.
//  Copyright © 2022 insede.me. All rights reserved.
//

protocol CitiesTableViewOutput: PullToRefreshProtocol {
  /// - author: Anton Belorukavsky
  func viewIsReady()
}
