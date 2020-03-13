import UIKit
class TempConverterController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var celsius: UILabel!
    @IBOutlet weak var fahrenheit: UILabel!
    @IBOutlet weak var kelvin: UILabel!
   
    var inputidentifier = 0
    let display = (1, false, "bruh")
 //tuple above
   //allows you to choose your input type, changes this value as you click the button which allows you to execute different functions
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        celsius.text = "Celsius"
        fahrenheit.text = "Fahrenheit"
        kelvin.text = "Kelvin"
        print(display.0)
        print(display.1)
        print(display.2)
    }

    // IBAction created with Drag from Storyboard
   @IBAction func fahrenheit(sender: UIButton) {
    
    inputidentifier = 1
        // let is for values that are not modified
        /*let c = Float(side1.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(side2.text!)

        // Pythagorean Calculation
        let s3 = sqrt( (s1! * s1!) + (s2! * s2!) )

        // Set calculation to screen
        side3.text = String(s3)
        print("Pyth  \(side3.text!)")
 */
    
    }
  @IBAction func celsius(sender: UIButton) {
   
  inputidentifier = 2
       // let is for values that are not modified
       /*let c = Float(side1.text!) // Input value, !(Bang) avoids errors
       let s2 = Float(side2.text!)

       // Pythagorean Calculation
       let s3 = sqrt( (s1! * s1!) + (s2! * s2!) )

       // Set calculation to screen
       side3.text = String(s3)
       print("Pyth  \(side3.text!)")
*/
   
   }
  @IBAction func kelvin(sender: UIButton) {
   
   inputidentifier = 3
       // let is for values that are not modified
       /*let c = Float(side1.text!) // Input value, !(Bang) avoids errors
       let s2 = Float(side2.text!)

       // Pythagorean Calculation
       let s3 = sqrt( (s1! * s1!) + (s2! * s2!) )

       // Set calculation to screen
       side3.text = String(s3)
       print("Pyth  \(side3.text!)")
*/
   
   }

  @IBAction func calculate(sender: UIButton) {
   //the following code tests the var inputidentifier and executes different tasks based on that
    if (inputidentifier == 1) {
        let inputf = Float(input.text!)
        let celsiusv = (inputf!-32) * (5/9)
        let kelvinv = celsiusv + 273
        celsius.text = String(celsiusv)
        kelvin.text = String(kelvinv)
        fahrenheit.text = String(inputf!)
        //following tests if input is too high, and outputs tuple if it is
        if (inputf! > 100000) {
            celsius.text = (display.2)
                   kelvin.text = (display.2)
                   fahrenheit.text = (display.2)
        }
       
        
    }
    
    if (inputidentifier == 2) {
           let inputc = Float(input.text!)
           let kelvinv = (inputc! + 273)
        let fahr = (inputc!*9/5) + 32
           celsius.text = String(inputc!)
           kelvin.text = String(kelvinv)
           fahrenheit.text = String(fahr)
        if (inputc! > 100000) {
                  celsius.text = (display.2)
                         kelvin.text = (display.2)
                         fahrenheit.text = (display.2)
              }
          
           
       }
    
    if (inputidentifier == 3) {
           let inputk = Float(input.text!)
           let celsiusv = (inputk! - 273)
        let fahr = (celsiusv - 273)
           celsius.text = String(celsiusv)
           kelvin.text = String(inputk!)
           fahrenheit.text = String(fahr)
          if (inputk! > 100000) {
                    celsius.text = (display.2)
                           kelvin.text = (display.2)
                           fahrenheit.text = (display.2)
                }
           
       }
       // let is for values that are not modified
       /*let c = Float(side1.text!) // Input value, !(Bang) avoids errors
       let s2 = Float(side2.text!)

       // Pythagorean Calculation
       let s3 = sqrt( (s1! * s1!) + (s2! * s2!) )

       // Set calculation to screen
       side3.text = String(s3)
       print("Pyth  \(side3.text!)")
*/
   
   }
}
