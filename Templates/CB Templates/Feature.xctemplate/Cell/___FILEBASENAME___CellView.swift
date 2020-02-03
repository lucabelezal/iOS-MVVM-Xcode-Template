//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Components

internal class ___VARIABLE_featureName___CellView: UIView, CellViewModelOwner {

    // MARK: - Internal Properties

    internal var isSelected: Bool

    internal var viewModel: ___VARIABLE_featureName___CellViewModelProtocol? {
        didSet {
            update()
        }
    }

    // MARK: - Private Properties

    private let contentView: UIView

    // MARK: - Initialize Methods
    
    internal override init(frame: CGRect) {
        contentView = UIView()
        isSelected = false
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

extension ___VARIABLE_featureName___CellView: ViewCodable {

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