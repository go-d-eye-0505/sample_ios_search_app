import UIKit
import WebKit

class WebViewController: UIViewController {

    var itemUrl: String?

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView.customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1"

        guard let itemUrl = itemUrl else {
            return
        }

        guard let url = URL(string: itemUrl) else {
            return
        }

        let request = URLRequest(url: url)
        webView.load(request)
    }

}
