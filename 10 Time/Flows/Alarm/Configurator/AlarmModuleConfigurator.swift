//
//  AlarmModuleConfigurator.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

final class AlarmModuleConfigurator {

    // MARK: - Internal Methods

    func configure() -> UIViewController {
        let view = AlarmViewController()
        let presenter = AlarmPresenter()
        let router = AlarmRouter()

        presenter.view = view
        presenter.router = router
        router.view = view
        view.output = presenter

        return view
    }

}
