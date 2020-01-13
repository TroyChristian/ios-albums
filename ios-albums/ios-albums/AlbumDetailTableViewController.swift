//
//  AlbumDetailTableViewController.swift
//  ios-albums
//
//  Created by Lambda_School_Loaner_219 on 1/13/20.
//  Copyright © 2020 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

class AlbumDetailTableViewController: UITableViewController {
// outlets
    

    @IBOutlet weak var albumTextField: UITextField!
    
    @IBOutlet weak var artistTextField: UITextField!
    
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var coverArtTextField: UITextField!
    
    //MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    



}
