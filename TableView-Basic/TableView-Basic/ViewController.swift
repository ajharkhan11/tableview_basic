//
//  ViewController.swift
//  TableView-Basic
//
//  Created by Ajharudeen Khan on 07/05/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var genreListTableView: UITableView!
    
    let genreList = ["Action","Animation","Crime","Mystery","Romance","Drama"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        genreList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let genreCell = UITableViewCell.init(style: .default, reuseIdentifier: "genreListCell")
        let genreCell = tableView.dequeueReusableCell(withIdentifier: "genreListCell", for: indexPath)
        genreCell.textLabel?.text = genreList[indexPath.row]
        
        return genreCell
    }
    
}

