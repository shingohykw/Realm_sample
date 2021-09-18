//
//  TwitterDateFormatter.swift
//  TwitterTweet
//
//  Created by Yu Sugawara on 11/17/16.
//  Copyright © 2016 Yu Sugawara. All rights reserved.
//

import Foundation

struct TwitterDateFormatter {
    
    /**
     ツイートのJSONで使用されている日付のフォーマッタ
     日付フォーマッタの仕様は　[Unicode Technical Standard #35](http://www.unicode.org/reports/tr35/tr35-25.html#Date_Format_Patterns)に準拠しています。
     */
    static let api: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "EEE MMM dd HH:mm:ss Z yyyy" // Wed Apr 18 04:38:57 +0000 2012
        return formatter
    }()
    
    /**
     ツイートの表示に使用する絶対時間の日付フォーマッタ
     */
    static let absolute: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale =  Locale(identifier: "ja") // ロケールは日本語を指定
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
    
}
