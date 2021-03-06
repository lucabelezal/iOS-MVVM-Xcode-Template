//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Common
import UIKit

internal class ___VARIABLE_fileName___ViewController: UIViewController, StatefulViewProtocol {

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

    private func configureViewState() {
        loadingView = PlaceholderLoadingView()
        loadingView?.presentedView.backgroundColor = view.backgroundColor
        loadingView?.viewModel = PlaceholderLoadingViewModel(text: L10n.Wallet.stateLoading)
        errorView = PlaceholderErrorView(frame: view.frame, delegate: self)
    }

    private func configureNavigationBar() {
        if let navigationBar = navigationController?.navigationBar {
            navigationBar.theme(with: Style.NavigationBar.defaultHeader)
            navigationBar.barColor = .clear
        }

        let backButton = UIButton(type: .custom)
        backButton.theme(with: Style.Button.headerNegative)
        backButton.setTitle(IconLibrary.fechar.rawValue, for: .normal)
        backButton.setTitleColor(Pallet.negativeGreyscaleColor100, for: .normal)
        backButton.addTarget(self, action: #selector(pressBackButton), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }

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
