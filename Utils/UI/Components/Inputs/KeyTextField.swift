//
//  KeyTextField.swift
//  Key
//
//  Created by Kenan Sezginbaş on 26.09.2023.
//

import UIKit

class KeyTextField: UITextField {

    init(placeHolder: String, keyboardType: UIKeyboardType = .default, isSecure: Bool = false) {
        super.init(frame: .zero)
        self.placeholder        = placeHolder
        self.keyboardType       = keyboardType
        self.isSecureTextEntry  = isSecure
        configure()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor     = .systemGray4
        layer.cornerRadius  = 10
        textAlignment       = .center
        translatesAutoresizingMaskIntoConstraints = false
    }
}
