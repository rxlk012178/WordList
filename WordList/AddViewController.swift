//
//  AddViewController.swift
//  WordList
//
//  Created by 松田結衣 on 2022/05/11.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var englishTextField: UITextField!
    @IBOutlet var japaneseTextField: UITextField!
    var wordArray: [Dictionary<String, String>] = []    // UserDefaultsから取る配列
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "WORD") != nil {
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
    }
    
    @IBAction func saveWord() {
        
        let wordDictionary = ["english": englishTextField.text!, "japanese": japaneseTextField.text!]
        
        wordArray.append(wordDictionary)
        saveData.set(wordArray, forKey: "WORD")
        
        let alert = UIAlertController(
            title: "保存完了",
            message: "単語の登録が完了しました",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        
        present(alert, animated: true, completion: nil)
        //　追加したから空にする
        englishTextField.text = ""
        japaneseTextField.text = ""
        
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
