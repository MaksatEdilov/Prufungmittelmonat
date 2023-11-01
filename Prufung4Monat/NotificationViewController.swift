//
//  NotificationViewController.swift
//  Prufung4Monat
//
//  Created by Maksat Edil on 4/11/23.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate {
    
    private let tableView = UITableView()
    private var general: [Notification] = []
    private let cell = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Notification"
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForTableView()
        notificationSetUp()
    }
    
    private func notificationSetUp(){
        general = [
            Notification(image: "Jane", mainLbl: "Jane Cooper has \npublished a new recipe!", extraLbl: "Today | 09:24 AM", mainImage: "Jane1", extraImage: "forImage"),
            Notification(image: "Rochel", mainLbl: "Rochel has commented \non your recipe", extraLbl: "1 day ago |  14:43 PM", mainImage: "Rochel1", extraImage: "forImage"),
            Notification(image: "Brad", mainLbl: "Brad Wigington liked \nyour comment", extraLbl: "1 day ago | 09:29 AM", mainImage: "Brad1", extraImage: "forImage"),
            Notification(image: "Tyra", mainLbl: "Tyra Ballentine has \npublished a new recipe!", extraLbl: "2 days ago | 10:29 AM", mainImage: "Tyra1", extraImage: "forImage"),
            Notification(image: "Marci", mainLbl: "Marci Winkles has \npublished a new recipe!", extraLbl: "3 days ago | 16:52 PM", mainImage: "Marci1", extraImage: "forImage"),
            Notification(image: "Aileen", mainLbl: "Aileen has commented \non your recipe", extraLbl: "4 days ago | 14:27 PM", mainImage: "Aileen1", extraImage: "forImage"),
            Notification(image: "George", mainLbl: "George has commented \non your recipe", extraLbl: "5 days ago | 09:20 AM", mainImage: "George1", extraImage: "forImage")
        ]
    }
    private func setUpConstraintsForTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 88),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NotCell.self, forCellReuseIdentifier: cell)
    }
}

extension NotificationViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell, for: indexPath) as! NotCell
        cell.clipsToBounds = true
        cell.initCellData(general[indexPath.row])
        return cell
    }
}

    

