//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

let db = Firestore.firestore()

class ChatViewController: UIViewController, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages:[Message] = [ Message(sender: "1@2.com", body: "Hey"),
                               Message(sender: "a@b.com", body: "Hello"),
                               Message(sender: "1@2.com", body: "Wagwaan")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        title = K.appName
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        loadMessages()

    }
    func loadMessages(){
        
        
        db.collection(K.FStore.collectionName)
            .order(by: K.FStore.dateField)
            .addSnapshotListener{  (querySnapshot, error )in
            
            self.messages = []
            if error != nil{
                
                print("Retrieving data from fire store. \(String(describing: error))")
                
            }else {
                
                if let snapshotDocuments = querySnapshot?.documents{
                    for doc in snapshotDocuments{
                        let data = doc.data()
                        if   let sender = data[K.FStore.senderField] as? String , let messageBody = data[K.FStore.bodyField] as? String{
                            
                            let newMessage = Message(sender: sender, body: messageBody)
                            self.messages.append(newMessage)
                            
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                            }
                            
                            self.tableView.reloadData()
                            
                            
                        }
                        
                     
                    }
                }
                
            }
        }
        
    }
    
   

    @IBAction func sendPressed(_ sender: UIButton) {
        
        if let messageBody = messageTextfield.text ,let messageSender = Auth.auth().currentUser?.email{
            
            db.collection(K.FStore.collectionName).addDocument(data: [K.FStore.senderField: messageSender, K.FStore.bodyField: messageBody,K.FStore.dateField:Date().timeIntervalSince1970]) { (error) in
                if error != nil {
                    print("\(String(describing: error))")
                    
                }else{
                    print("Data saved")
                    
                }
                
                
            }
            
        }
        
    }
    

    @IBAction func LogOutPressed(_ sender: UIBarButtonItem) {
        
        let firebaseAuth = Auth.auth()
    do {
         try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
        
        
        
        
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
    }
}

extension ChatViewController: UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return messages.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let message = messages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        
        cell.label.text = message.body
        
        if message.sender == Auth.auth().currentUser?.email{
            cell.leftImageView.isHidden = true
            cell.rightImageView.isHidden = false
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
            cell.label.textColor = UIColor(named: K.BrandColors.purple)
            
            
        }
        else{
            cell.leftImageView.isHidden = false
            cell.rightImageView.isHidden = true
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.purple)
            cell.label.textColor = UIColor(named: K.BrandColors.lightPurple)
            
        }
        
        
        return cell
    
    }
    
}
extension ChatViewController:UITextViewDelegate{
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
    }
    
    
}
