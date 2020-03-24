//
//  RecipesCell.swift
//  FoodieSearch-rx
//
//  Created by Christian Leovido on 24/03/2020.
//  Copyright © 2020 Christian Leovido. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!

    static var identifier: String = "RecipeCell"

    var recipe: Recipe!

    func configureCell(recipe: Recipe) {
        self.recipe = recipe
        self.titleLabel.text = recipe.title
        self.ingredientsLabel.text = recipe.ingredients

        guard let thumbnail = recipe.thumbnail else {
            return
        }

        guard let url = try URL(string: thumbnail) else {
            return
        }

        self.thumbnailImageView.image = UIImage(data: url.dataRepresentation)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
