//
//  KeyButton.swift
//  Key
//
//  Created by Kenan Sezginbaş on 26.09.2023.
//

import UIKit

class KeyButton: UIButton {

    init(buttonText: String) {
        super.init(frame: .zero)
        self.setTitle(buttonText, for: .normal)
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
        backgroundColor     = .black
        layer.cornerRadius  = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
}
