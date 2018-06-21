//
//  TileTitleDescriptionController.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/7/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit

class TileTitleDescriptionController<L: UIView> {
    
    // MARK: - Fields
    
    let view: TileTitleDescriptionView<L>
    
    var title: String? {
        didSet {
            view.titleLabel?.text = title
            view.resize()
        }
    }
    
    var descriptionText: String? {
        didSet {
            view.descriptionLabel?.text = descriptionText
            view.resize()
        }
    }
    
    var tileText: String? {
        didSet {
            guard let tile = view.tile as? UILabel else { fatalError("Tile is not a UILabel") }
            tile.text = tileText
        }
    }
    
    var tileImage: UIImage? {
        didSet {
            guard let tile = view.tile as? UIImageView else { fatalError("Tile is not a UIImageView") }
            tile.image = tileImage
        }
    }
    
    // MARK: - Life Cycle
    
    init(view: TileTitleDescriptionView<L>) {
        self.view = view
    }
    
    // MARK: - Public
    
    public func setupViewLayout() {
        view.setupLayout()
    }
}
