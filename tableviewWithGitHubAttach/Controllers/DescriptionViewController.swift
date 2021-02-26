//
//  DescriptionViewController.swift
//  tableviewWithGitHubAttach
//
//  Created by IPHTECH 20 on 25/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    //MARK:-variables
    var recipeName = ""
    var recipePrepTime = ""
    var recipeImage = ""
    
    //MARK:- outlet
    @IBOutlet weak var recipePrepTimeLabel: UILabel!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeImageView: UIImageView!
    
    //MARK:viewControllerDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAllData()
    }

}

//MARK:- DescriptionViewController
extension DescriptionViewController {
    func loadAllData() {
        recipeNameLabel.text = recipeName
        recipePrepTimeLabel.text = recipePrepTime
        recipeImageView.image = UIImage(named: recipeImage)
    }
}
