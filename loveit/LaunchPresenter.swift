//
//  LaunchPresenter.swift
//  loveit
//
//  Created by takumi.kashima on 9/10/16.
//  Copyright © 2016 UNUUU. All rights reserved.
//

import Foundation

class LaunchPresenter {
    private let contactView: LaunchViewProtocol
    
    init(view: LaunchViewProtocol) {
        contactView = view
    }
    
    func onClickButtonLineLogin() {
        contactView.navigateToSearchScroll()
    }
}
