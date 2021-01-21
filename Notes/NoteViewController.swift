//
//  NoteViewController.swift
//  Notes
//
//  Created by Ansh Maroo on 5/22/20.
//  Copyright © 2020 Mygen Contac. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    var note: Note!
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textView.text = note.contents
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        note.contents = textView.text
        NoteManager.main.save(note: note)
    }
    
}
