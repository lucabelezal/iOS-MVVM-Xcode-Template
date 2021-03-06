//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Common
import UIKit

internal class ___VARIABLE_fileName___ViewController: UIViewController {

    // MARK: - Private Property

    private let service: <#___VARIABLE_fileName___ServiceProtocol#>

    // MARK: - Life Cicle

    internal init(service: <#___VARIABLE_fileName___ServiceProtocol#>) {
        self.service = service
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    internal required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Override Methods

    internal override func loadView() {
        self.view = ___VARIABLE_fileName___View(frame: UIScreen.main.bounds)
    }

    internal override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureViewState()
        loadData()
    }

    // MARK: - Private methods

    private func loadData() {

    }

    private func updateView() {

        if let view = self.view as? ___VARIABLE_fileName___View {
            // view.viewModel = ___VARIABLE_fileName___ViewModel()
        }
    }

    // MARK: - Action Button

    @objc private func pressBackButton() {

    }

}

// MARK: - Extensions

extension ___VARIABLE_fileName___ViewController: PlaceholderErrorViewDelegate {

    internal func didTryAgain() {
        loadData()
    }

}
