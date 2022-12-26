//
//  ViewController.swift
//  tablewithNav
//
//  Created by 박다미 on 2022/12/25.
//

import UIKit

class ViewController: UIViewController{
    
    
   
    var movieDataArray:[Movie] = []
    var movieDataManager = DataManager()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 120
        movieDataManager.makemoveData()
        movieDataArray = movieDataManager.getMovieData()
        
        // Do any additional setup after loading the view.
    }
    
    
}
extension  ViewController:UITableViewDataSource{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movieDataArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
            cell.mainImageLabel.image = movieDataArray[indexPath.row].movieImage
            cell.movieNameLabel.text = movieDataArray[indexPath.row].movieName
            cell.descriptionLabel.text = movieDataArray[indexPath.row].movieDescription
            cell.selectionStyle = .none
            
            return cell
        }
    }
extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath)
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let detailVC = segue.destination as! DetailViewController
            let array = movieDataManager.getMovieData()
            let indexPath = sender as! IndexPath
            detailVC.movieData = array[indexPath.row]
        }
    }
}


