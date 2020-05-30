//
//  ExtensionWebSiteViewController.swift
//  Resume
//
//  Created by Виталий Сосин on 30.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

extension WebSiteViewController {
    
    // MARK: - Get Web View
    func getWebView(homePage: String) {
        guard let url = URL(string: homePage) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
    }
}
