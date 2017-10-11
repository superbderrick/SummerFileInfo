//
//  ItunesProcessor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 09/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
open class ItunesProcessor : SummerProcessor {
  var videoFormatRange : Array<String>!
  var audioFormatRange : Array<String>!
  
  override public  init() {
    
    
    
  }
  
  func startProcessing(_ files:[String]) -> [SummerFile] {
    var summerFiles = [SummerFile]()
    for i in 0 ..< files.count {
      let file = files[i]
      
      let filename = ItunesUtils.getFileName(file)
      let fileFormat = ItunesUtils.getFileName(file)
      let fileIdentifier = ItunesUtils.getFileIdentifier(file)
      let fileType = ItunesUtils.getFileType(file)
      
      let summerFile = SummerFile(fileName:filename , fileFormat: fileFormat,
                                  fileIdentifier :fileIdentifier ,mediaType:fileType)

      summerFiles.append(summerFile)
      
    }
    return summerFiles
    
  }
  
  private func setupFormatRange() {
    videoFormatRange = SupportFormats.videoFormats
    audioFormatRange = SupportFormats.audioFormats
    
  }

  
}
