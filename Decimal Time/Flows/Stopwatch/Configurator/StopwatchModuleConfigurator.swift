//
//  StopwatchModuleConfigurator.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

final class StopwatchModuleConfigurator {
    
    // MARK: - Internal Methods

    func configure() -> UIViewController {
        let view = StopwatchViewController()
        let presenter = StopwatchPresenter()
        let router = StopwatchRouter()

        presenter.view = view
        presenter.router = router
        router.view = view
        view.output = presenter

        return view
    }

}
