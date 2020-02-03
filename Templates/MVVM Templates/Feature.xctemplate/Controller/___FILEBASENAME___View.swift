//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Components

internal class ___VARIABLE_featureName___View: UIView {

    internal var viewModel: ___VARIABLE_featureName___ViewModelProtocol? {
        didSet {
            update()
        }
    }

    private let contentView: UIView

    internal override init(frame: CGRect) {
        contentView = UIView()
        super.init(frame: frame)
        setupView()
    }

    @available(*, unavailable)
    internal required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    // MARK: - Private Methods

    private func update() {
   
    }

}

extension ___VARIABLE_featureName___View: ViewCodable {

    internal func configure() {

    }

    internal func buildHierarchy() {
        addView(contentView)
    }

    internal func buildConstraints() {

        contentView.layout.makeConstraints { make in
            make.top.equalTo(self.layout.top)
            make.bottom.equalTo(self.layout.bottom)
            make.left.equalTo(self.layout.left)
            make.right.equalTo(self.layout.right)
        }
        
    }

    internal func render() {

    }

}