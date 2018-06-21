//
//  TileTitleDescriptionView.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/7/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit
import SnapKit

class TileTitleDescriptionView<T: UIView>: UIView {
    
    var tile: T?
    var titleLabel: UILabel?
    var descriptionLabel: UILabel?
    
    var tileLayoutConstants: LayoutConstants = LayoutConstants(top: 10,
                                                               bottom: nil,
                                                               leading: 10,
                                                               trailing: nil,
                                                               width: 40,
                                                               height: 40)
    
    var titleLayoutConstants: LayoutConstants = LayoutConstants(top: 10,
                                                                bottom: nil,
                                                                leading: 10,
                                                                trailing: 10,
                                                                width: nil,
                                                                height: nil)
    
    var descriptionLayoutConstants: LayoutConstants = LayoutConstants(top: 10,
                                                                      bottom: 10,
                                                                      leading: 10,
                                                                      trailing: 10,
                                                                      width: nil,
                                                                      height: nil)
    
    //MARK: - Internal
    
    func resize() {
       frame.size = systemLayoutSizeFitting(UILayoutFittingExpandedSize)
    }
    
    func setupLayout() {
        setupTileLayout()
        setupTitleLabelLayout()
        setupDescriptionLabelLayout()
    }
    
    //MARK: - Private
    
    private func setupTileLayout() {
        guard let tile = tile else { fatalError("tile is nil") }
        guard let top = tileLayoutConstants.top else { fatalError("tile top layout constant is nil")}
        guard let leading = tileLayoutConstants.leading else { fatalError("tile leading layout constant is nil")}
        guard let width = tileLayoutConstants.width else { fatalError("tile width layout constant is nil")}
        guard let height = tileLayoutConstants.height else { fatalError("tile height layout constant is nil")}
        
        addSubview(tile)
        tile.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(top)
            make.leading.equalToSuperview().offset(leading)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    private func setupTitleLabelLayout() {
        guard let titleLabel = titleLabel else { fatalError("titleLabel is nil") }
        guard let tile = tile else { fatalError("tile is nil") }
        guard let top = titleLayoutConstants.top else { fatalError("tile top layout constant is nil")}
        guard let leading = titleLayoutConstants.leading else { fatalError("tile leading layout constant is nil")}
        guard let trailing = titleLayoutConstants.trailing else { fatalError("tile trailing layout constant is nil")}
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(top)
            make.leading.equalTo(tile.snp.trailing).offset(leading)
            make.trailing.equalToSuperview().inset(trailing)
        }
    }
    
    func setupDescriptionLabelLayout() {
        guard let descriptionLabel = descriptionLabel else { fatalError("descriptionLabel is nil") }
        guard let titleLabel = titleLabel else { fatalError("titleLabel is nil") }
        guard let tile = tile else { fatalError("tile is nil") }
        guard let top = descriptionLayoutConstants.top else { fatalError("tile top layout constant is nil")}
        guard let leading = descriptionLayoutConstants.leading else { fatalError("tile leading layout constant is nil")}
        guard let bottom = descriptionLayoutConstants.bottom else { fatalError("tile bottom layout constant is nil")}
        guard let trailing = descriptionLayoutConstants.trailing else { fatalError("tile trailing layout constant is nil")}

        addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(top)
            make.leading.equalTo(tile.snp.trailing).offset(leading)
            make.trailing.equalToSuperview().inset(trailing)
            make.bottom.equalToSuperview().inset(bottom)
        }
    }
}
