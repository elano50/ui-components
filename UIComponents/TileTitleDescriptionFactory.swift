//
//  TileTitleDescriptionFactory.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/9/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit

open class TileTitleDescriptionFactory {
    
    open static func labelTileController(view: TileTitleDescriptionView<UILabel>) -> TileTitleDescriptionController<UILabel> {
        return TileTitleDescriptionController(view: view)
    }
    
    open static func imageTileController(view: TileTitleDescriptionView<UIImageView>) -> TileTitleDescriptionController<UIImageView> {
        return TileTitleDescriptionController(view: view)
    }
    
    open static func defaultLabelTileController() -> TileTitleDescriptionController<UILabel> {
        return labelTileController(view: defaultLabelTileView())
    }
    
    open static func defaultImageTileController() -> TileTitleDescriptionController<UIImageView> {
        return imageTileController(view: defaultImageTileView())
    }
    
    open static func defaultImageTileView() -> TileTitleDescriptionView<UIImageView> {
        let view = TileTitleDescriptionView<UIImageView>()
        
        view.tile = UIImageView()
        view.titleLabel = UILabel()
        view.descriptionLabel = UILabel()
        
        let tileStyle = ViewStyle()
        tileStyle.contentMode = .scaleAspectFill
        view.tile?.apply(style: tileStyle)
        
        let titleStyle = LabelStyle()
        titleStyle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        view.titleLabel?.apply(style: titleStyle)
        
        let descriptionLabelStyle = LabelStyle()
        descriptionLabelStyle.numberOfLines = 0
        descriptionLabelStyle.font = UIFont.systemFont(ofSize: 14)
        view.descriptionLabel?.apply(style: descriptionLabelStyle)
        
        view.tileLayoutConstants.width = 60
        view.tileLayoutConstants.height = 60
        
        return view
    }
    
    open static func defaultLabelTileView() -> TileTitleDescriptionView<UILabel> {
        let view = TileTitleDescriptionView<UILabel>()
                
        view.tile = UILabel()
        view.titleLabel = UILabel()
        view.descriptionLabel = UILabel()
        
        let tileStyle = LabelStyle()
        tileStyle.backgroundColor = UIColor(red: 153 / 255, green: 204 / 255, blue: 1, alpha: 1)
        tileStyle.cornerRadius = 10
        tileStyle.textColor = .white
        tileStyle.textAlignment = .center
        tileStyle.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        view.tile?.apply(style: tileStyle)
        
        let titleStyle = LabelStyle()
        titleStyle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        view.titleLabel?.apply(style: titleStyle)
        
        let descriptionLabelStyle = LabelStyle()
        descriptionLabelStyle.numberOfLines = 0
        descriptionLabelStyle.font = UIFont.systemFont(ofSize: 14)
        view.descriptionLabel?.apply(style: descriptionLabelStyle)
        
        view.tileLayoutConstants.width = 60
        view.tileLayoutConstants.height = 60
        
        return view
    }
}
