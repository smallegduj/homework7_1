import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var countLabel: UILabel!
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        
        print("old text:\(textView.text)")
        print("range location:\(range.location)")
        print("range length:\(range.length)")
        print("new text:\(text)")
        
        let finalString = (textView.text as NSString).stringByReplacingCharactersInRange(range, withString: text)
        let count = finalString.characters.count
        if count > 10 {
            return false
        }
        else {
            self.countLabel.text = "\(count)"
            return true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

