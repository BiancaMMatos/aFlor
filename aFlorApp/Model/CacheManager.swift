//
//  CacheManager.swift
//  aFlor
//
//  Created by Bianca Maciel Matos on 21/01/22.
//

import SwiftUI

class CacheManager {
    static let instance = CacheManager()
    init() { }
    var imageCache: NSCache<NSString, UIImage> = {
        let cache = NSCache<NSString, UIImage>()
        //costumizando o tamanho da imagem
        cache.countLimit = 100
        cache.totalCostLimit = 1024 * 1024 * 100 // 100MB
        return cache
    } ()
    
    func add(image: UIImage, endereco_memoria: String) {
        imageCache.setObject(image, forKey: endereco_memoria as NSString)
        print("Added to cache!")
    }
    
    func remove(name: String) {
        imageCache.removeObject(forKey: name as NSString)
        print("Removed from cache!")
    }
    
    func get(name: String) -> UIImage? {
        return imageCache.object(forKey: name as NSString)
    }
}
