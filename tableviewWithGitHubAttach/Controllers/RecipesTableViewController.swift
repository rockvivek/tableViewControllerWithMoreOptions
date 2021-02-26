
import UIKit

class RecipesTableViewController: UIViewController {
    
    //fetch all data of Recipe model
    let recipes = Recipe.createRecipes()
    
    //MARK:- Outlet
    @IBOutlet weak var recipesTableView: UITableView!
    
    //MARK:- ViewControllerDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        recipesTableView.delegate = self
        recipesTableView.dataSource = self
    }


}

//MARK:- RecipesTableViewController
extension RecipesTableViewController {
    func DecorateUI(){
        recipesTableView.separatorStyle = .none
    }
}

//MARK:- UITableViewDelegate
extension RecipesTableViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell clicked")
        let vc = storyboard?.instantiateViewController(identifier: "DescriptionViewController") as! DescriptionViewController
        vc.recipeName = recipes[indexPath.row].name
        vc.recipePrepTime = recipes[indexPath.row].prepTime
        vc.recipeImage = recipes[indexPath.row].thumbnails
        self.navigationController?.pushViewController(vc, animated: true )
    }
}

//MARK:- UITableViewDataSource
extension RecipesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipesCell", for: indexPath) as! RecipesTableViewCell
        cell.DecorateCellUI()
        cell.updateCellData(recipes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
}
