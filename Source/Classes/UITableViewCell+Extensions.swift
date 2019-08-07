//
//  UITableViewCell+Extensions.swift
//  Source
//
//  Created by Stefan Herold on 07.08.19.
//  Copyright © 2019 CodingCobra. All rights reserved.
//

import UIKit

public extension UITableViewCell {

    // Adjusting the separator insets: http://stackoverflow.com/a/39005773/971329
    func adjustCellSeparatorInsets(at indexPath: IndexPath,
                                   for modelCollection: ModelCollection) {

        guard modelCollection.isInBounds(indexPath) else { return }

        let item = modelCollection[indexPath]
        let insets = item.separatorInsets

        // removing separator inset
        separatorInset = insets.edgeInsets

        // prevent the cell from inheriting the tableView's margin settings
        preservesSuperviewLayoutMargins = false

        // explicitly setting cell's layout margins
        directionalLayoutMargins = insets
    }
}