//
//  TwitterJSON.swift
//  TwitterTweet
//
//  Created by Yu Sugawara on 11/15/16.
//  Copyright © 2016 Yu Sugawara. All rights reserved.
//

import Foundation

struct TwitterJSON {
    
    static var tweetID: Int {
        return tweet["id"] as! Int
    }
    
    /**
     ツイートのJSONオブジェクト（必要な部分だけを抜粋）
     
     [公式ドキュメント](https://dev.twitter.com/overview/api/tweets)
     */
    static let tweet: [String: Any] = [
        // 元のツイート: https://twitter.com/jack/status/20
        "id": 20, // ツイートID
        "created_at": "Tue Mar 21 20:50:14 +0000 2006", // ツイートが作成された日付
        "text": "just setting up my twttr", // ツイート本文
        "user": user, // ツイートしたユーザ
    ]
    
    /**
     ユーザのJSONオブジェクト（必要な部分だけを抜粋）     
     ※`profile_image_url_https`はオリジナルから変更しています。
     
     [公式ドキュメント](https://dev.twitter.com/overview/api/users)
     */
    static let user: [String: Any] = [
        "id": 12, // ユーザID
        "name": "Jack Dorsey", // ユーザ名
        "screen_name": "jack", //　スクリーンネーム（変更可能な一意の文字列ID）
        "profile_image_url_https": "https://abs.twimg.com/sticky/default_profile_images/default_profile_0_normal.png", // ユーザ画像URL
    ]
    
}
