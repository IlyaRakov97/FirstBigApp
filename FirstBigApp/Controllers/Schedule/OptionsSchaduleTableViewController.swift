//
//  OptionsSchaduleTableViewController.swift
//  FirstBigApp
//
//  Created by Илья Раков on 10.02.2022.
//

import UIKit

class OptionsSchaduleTableViewController: UITableViewController{
    
    let idOptionsSchaduleCell = "idOptionsSchaduleCell"
    let idOptionsSchaduleHeader = "idOptionsSchaduleCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .lightGray
        tableView.separatorStyle = .none

        tableView.register(OptionSchaduleTableViewCell.self, forCellReuseIdentifier: idOptionsSchaduleCell)
        tableView.register(HeaderOptionsScheduleTableViewCell.self, forCellReuseIdentifier: idOptionsSchaduleHeader)
        
        title = "Option Schadule"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        case 3: return 1
        default:
            return 1
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionsSchaduleCell, for: indexPath) as! OptionSchaduleTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionsSchaduleHeader) as! HeaderOptionsScheduleTableViewCell
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
