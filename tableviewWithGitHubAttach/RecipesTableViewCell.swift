
import UIKit

class RecipesTableViewCell: UITableViewCell {

    //MARK:- Outlet
    @IBOutlet weak var cellPrepTimeLabel: UILabel!
    @IBOutlet weak var cellRecipeNameLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellView: UIView!
    
}

extension RecipesTableViewCell  {
    
    //MARK: DecorateCellUI
    func DecorateCellUI(){
        //cellView.layer.cornerRadius = cellImageView.frame.height / 3
        cellView.layer.backgroundColor = UIColor.purple.cgColor
        cellRecipeNameLabel.textColor = UIColor.white
        cellPrepTimeLabel.textColor = UIColor.white
    }
    
    //MARK: updateCellData
    func updateCellData(_ recipe:Recipe) {
        cellRecipeNameLabel.text = recipe.name
        cellPrepTimeLabel.text = recipe.prepTime
        cellImageView.image = UIImage(named: recipe.thumbnails)
    }
}

