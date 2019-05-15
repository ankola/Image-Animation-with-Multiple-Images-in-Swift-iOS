
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var ryuImageView: UIImageView!
    
    var heartImages: [UIImage] = []
    var ryuImages: [UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heartImages = createImageArray(total: 24, imagePrefix: "heart")
        ryuImages = createImageArray(total: 7, imagePrefix: "ryu")
    }
    
    // Can be refactored to an extension on Array.
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        
        var imageArray: [UIImage] = []
        
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        return imageArray
    }

    // Can be refactored to an extension on UIImage
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        animate(imageView: heartImageView, images: heartImages)
    }

    
    @IBAction func shoryukenButtonTapped(_ sender: UIButton) {
        animate(imageView: ryuImageView, images: ryuImages)
    }
}

