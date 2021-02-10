//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Полина Салюкова on 09.02.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = ["Хинкальная", "Парк Горького", "Аптекарский огород", "Black Star Burger", "Ваймэ", "Ботанический сад РАН", "Drunk Punk", "Штолле", "Чайхона №1"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
//        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
//        cell.textLabel?.text = restaurantNames[indexPath.row]
//        cell.imageView?.frame = CGRect(x: 100, y: 150, width: 150, height: 150)
//        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
    // MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
