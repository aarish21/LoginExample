//
//  File.swift
//  Swift Collection
//
//  Created by Aarish on 17/08/22.
//

import Foundation

extension String {
    func localized() -> String {
        return NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self
        )
    }
}
