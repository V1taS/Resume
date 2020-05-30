//
//  ViewController.swift
//  Resume
//
//  Created by Виталий Сосин on 29.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit
import WebKit

class WebSiteViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    private let url = "https://V1taS.ru"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getWebView(homePage: url)
    }
}
