//
//  SidebarViewController.swift
//  iGlance
//
//  Created by Dominik on 09.04.19.
//  Copyright © 2019 iGlance Corp. All rights reserved.
//

import Cocoa

class SidebarViewController: NSViewController {
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBOutlet weak var tableView: NSTableView!
    
    let sidebarItems = ["Dashboard", "Cpu Usage", "Cpu Temp.", "Memory", "Network", "Fan", "Battery"]
}

extension SidebarViewController: NSTableViewDataSource {
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return sidebarItems.count
    }
}

extension SidebarViewController: NSTableViewDelegate {
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "NameCellID"), owner: nil) as? NSTableCellView;
        cell?.textField?.stringValue = sidebarItems[row]
        return cell
    }
}
