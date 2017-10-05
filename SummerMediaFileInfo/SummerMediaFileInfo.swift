//
//  SummerMediaFileInfo.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

open class SummerMediaFileInfo  {
  
  // MARK: Properties
  
  open var summerFiles: [SummerFile]?
  
  fileprivate var options: SummerMediaFileInfoCustomizable! {
    didSet {
    }
  }
  
  public  init() {
    
  }
  
  open func setup(_ options: SummerMediaFileInfoCustomizable) {
    
    let extractor = ExtractorFactory.getExtractor(extractMode: options.extractMode)
    
    extractor.getFileInfo()
  }
  
  open func getSummerFiles() {
    
  }
  
  
 
  

  
}


