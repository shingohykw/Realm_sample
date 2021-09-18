//
//  User.swift
//  TwitterTweet
//
//  Created by Yu Sugawara on 11/14/16.
//  Copyright © 2016 Yu Sugawara. All rights reserved.
//

import Foundation
import RealmSwift

/**
 ユーザモデル。
 公式ドキュメント: https://dev.twitter.com/overview/api/users
 */
class User: Object {
    
    @objc dynamic var id = 0 // 一意の数値ID(変更不可でTwitterアカウントを作成時に自動で与えられる)
    @objc dynamic var name = "" // 名前
    @objc dynamic var screen_name = "" // スクリーンネーム（変更可能な一意の文字列ID）
    @objc dynamic var profile_image_url_https = "" // プロフィール画像URL
    
    /**
     プライマリキーとするプロパティ名を返す。
     */
    override class func primaryKey() -> String? {
        return "id" // idをプライマリキーに指定する
    }
    
}
