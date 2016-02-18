//
//  PokeCell.swift
//  Pokemon Monsters
//
//  Created by Jagadish Uppala on 2/15/16.
//  Copyright © 2016 Jagadish Uppala. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 5.0
    }
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        NameLabel.text = self.pokemon.name.capitalizedString
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
