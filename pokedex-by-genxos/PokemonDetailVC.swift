//
//  PokemonDetailVC.swift
//  pokedex-by-genxos
//
//  Created by Todd Fields on 2016-02-01.
//  Copyright © 2016 Todd Fields. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name.capitalizedString
    }

    @IBAction func bacBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

}
