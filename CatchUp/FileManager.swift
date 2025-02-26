//
//  FileManager.swift
//  CatchUp
//
//  Created by Noor Marwaha on 25/2/2025.
//


import Foundation

class FileManagerHelper {
    static let shared = FileManagerHelper()
    
    private init() {}
    
    // Get document directory path
    private func getDocumentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    /* // Get today's video file URL
     func getTodayVideoFileURL() -> URL {
     let formatter = DateFormatter()
     formatter.dateFormat = "yyyy-MM-dd"
     let fileName = "video_\(formatter.string(from: Date())).mov"
     return getDocumentsDirectory().appendingPathComponent(fileName)
     }
     */
    //26/02/2024
    
    /* func getTodayVideoFileURL() -> URL {
     let fileManager = FileManager.default
     let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
     let fileName = "video_\(Date().formatted(date: .numeric, time: .omitted)).mov"
     return documentDirectory.appendingPathComponent(fileName)
     }
     
     */
    //afternoon changes
    func getTodayVideoFileURL() -> URL {
        let fileManager = FileManager.default
        let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileName = "video_\(Date().formatted(date: .numeric, time: .omitted)).mov"
        return documentDirectory.appendingPathComponent(fileName)
    }
    
    // Get yesterday's video file URL
    func getYesterdayVideoFileURL() -> URL? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let fileName = "video_\(formatter.string(from: yesterday)).mov"
        let fileURL = getDocumentsDirectory().appendingPathComponent(fileName)
        
        return FileManager.default.fileExists(atPath: fileURL.path) ? fileURL : nil
    }

    // Save video with yesterday's name
    func saveVideoAsPreviousDay(videoURL: URL) {
        guard let yesterdayURL = getYesterdayVideoFileURL() else { return }
       // guard let yesterdayURL = saveVideoAsPreviousDay(getYesterdayVideoFileURL) else { return }

        do {
            try FileManager.default.moveItem(at: videoURL, to: yesterdayURL)
            print("✅ Video saved as previous day's file: \(yesterdayURL.path)")
        } catch {
            print("❌ Error saving previous day's video: \(error.localizedDescription)")
        }
    }
}
