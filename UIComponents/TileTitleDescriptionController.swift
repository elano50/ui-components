//
//  TileTitleDescriptionController.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/7/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit

open class TileTitleDescriptionController<L: UIView> {
    
    // MARK: - Fields
    
    open let view: TileTitleDescriptionView<L>
    
    open var title: String? {
        didSet {
            view.titleLabel?.text = title
            view.resize()
        }
    }
    
    open var descriptionText: String? {
        didSet {
            view.descriptionLabel?.text = descriptionText
            view.resize()
        }
    }
    
    open var tileText: String? {
        didSet {
            guard let tile = view.tile as? UILabel else { fatalError("Tile is not a UILabel") }
            tile.text = tileText
        }
    }
    
    open var tileImage: UIImage? {
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
    
    open func setupViewLayout() {
        view.setupLayout()
    }
}
