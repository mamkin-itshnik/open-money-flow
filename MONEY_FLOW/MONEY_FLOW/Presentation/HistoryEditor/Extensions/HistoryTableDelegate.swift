//
//  HistoryTableDelegate.swift
//  MONEY_FLOW
//
//  Created by Евгений on 07.01.2022.
//

import UIKit

extension HistoryOfRecordScreen: UITableViewDelegate, UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.contentView.transform = CGAffineTransform(scaleX: 1, y: -1)
        
        return cell
        
    }
}
