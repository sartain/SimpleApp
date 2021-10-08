//
//  Localize.swift
//  TemplateProject
//
//  Created by Alex Sartain on 08/10/2021.
//

import Foundation

func localize(_ key: LocalizationKey, default: String = "") -> String {
    NSLocalizedString(key.rawValue, value: `default`, comment: "")
}
