//
//  WorldClockModuleConfigurator.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

final class WorldClockModuleConfigurator {

    // MARK: - Internal Methods

    func configure() -> UIViewController {
        let view = WorldClockViewController()
        let presenter = WorldClockPresenter()
        let router = WorldClockRouter()

        presenter.view = view
        presenter.router = router
        router.view = view
        view.output = presenter

        return view
    }

}
