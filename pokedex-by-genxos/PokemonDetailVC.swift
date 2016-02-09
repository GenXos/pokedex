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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    @IBOutlet weak var currentImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var nextEvoLbl: UILabel!
    @IBOutlet weak var bioMovesSeg: UISegmentedControl!
    
    
    
    var pokemon: Pokemon!
    var selectedIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name.capitalizedString
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentImg.image = img
        
        pokemon.downloadPokemonDetails { () -> () in
            // this will be called when download is done.
            self.updateUI()
        }
        
        let selectedIndex = bioMovesSeg.selectedSegmentIndex
        print(selectedIndex)
    }
    
    func updateUI() {
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        pokedexLbl.text = "\(pokemon.pokedexId)"
        weightLbl.text = pokemon.weight
        baseAttackLbl.text = pokemon.baseAttack
      
        if pokemon.nextEvolutionId == "" {
            nextEvoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            
            if pokemon.nextEvolutionLvl != "" {
                str += " - Lvl \(pokemon.nextEvolutionLvl)"
            }
            nextEvoLbl.text = str
        }
    }

    @IBAction func bacBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func segmentedControlBtnClicked(sender: AnyObject) {
        
        let selectedIndex:Int = bioMovesSeg.selectedSegmentIndex
        print(selectedIndex)
    }
    
}
