//
//  TimerModuleConfigurator.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

final class TimerModuleConfigurator {
    
    // MARK: - Internal Methods

    func configure() -> UIViewController {
        let view = TimerViewController()
        let presenter = TimerPresenter()
        let router = TimerRouter()

        presenter.view = view
        presenter.router = router
        router.view = view
        view.output = presenter

        return view
    }

}
