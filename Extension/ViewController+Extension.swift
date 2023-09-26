//
//  ViewController+Extension.swift
//  Key
//
//  Created by Kenan Sezginbaş on 26.09.2023.
//

import UIKit

extension UIViewController {
    final func showAlert(title: String, message: String) {
        let alert       = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction    = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
}
