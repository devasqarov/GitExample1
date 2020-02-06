//
//  ViewController.swift
//  GitExample
//
//  Created by Nodirbek Asqarov on 2/6/20.
//  Copyright © 2020 Nodirbek Asqarov. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame)
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "MyCell")
        
        tableView.separatorStyle = .none
        
        print("Hell world")
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else {return UITableViewCell()}
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.transform = CGAffineTransform(translationX: -cell.frame.width+20, y: 0)
        cell.alpha = 0.6
        
//        let redView = cell.viewWithTag(3)!
//        UIView.transition(with: redView, duration: 0.5, options: .transitionFlipFromTop, animations: {
//            cell.transform = .identity
//            cell.alpha = 1
//        }, completion: nil)
//
        
        
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: {
            cell.transform = .identity
            cell.alpha = 1
        }, completion: nil)
        
    }
    


}

