//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", phone: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
    sourceArray = [  //"G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong"
           Restaurant(name: "花蓮香扁食東華店", type: "餐廳", location: "No. 10, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 3668", summary: "Delicious", image: "1.jpg", isVisited: false),
           Restaurant(name: "東華平價牛排簡餐館", type: "牛扒", location: "No. 216, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 2114", summary: "Yeah, the steak Chicken noddles... Love it, the soup also is good. And above it all, it is just outside my school. 😂 NDHU", image: "2.jpg", isVisited: false),
           Restaurant(name: "丸山和食", type: "日本菜", location: "No. 2之1號, Lane 96, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "354-243523", summary: "Boneless Chicken Drumstick Rice Chicken thighs are very tender, crispy and delicious. .", image: "3.jpg", isVisited: false),
           Restaurant(name: "異鄉廚坊", type: "餐廳", location: "974花蓮縣壽豐鄉吳全131-5號", phone: "03 866 2508", summary: "Staying in a nearby homestay and walking to reach there was no special expectation of the taste, but it is surprisingly in line with the pot of chili sauce commonly seen in our family, especially in Vietnamese stores. Add some to the rice or dried pho, dipped in raw spring rolls, and the superb meat slices are also too large. stingy.", image: "4.jpg", isVisited: false),
           Restaurant(name: "省軒坊", type: "餐廳", location: "No. 122號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 2758", summary: "The store sign is a bit unobvious, so look carefully. The taste is good. I currently think that the honey mustard chicken steak is the best. The shop opens late, and sometimes I can’t wait for noon. xD rarely meets a shop with fruit><", image: "5.jpg", isVisited: false),
           Restaurant(name: "東華大學吉米餐坊", type: "餐廳", location: "No. 211號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 1388", summary: "Sweet and sour fish rice is very good", image: "6.jpg", isVisited: false),
           Restaurant(name: "跑跑卡丁車", type: "賽車", location: "https://tw.beanfun.com/kartrider/main.aspx", phone: "234-834322", summary: "Racing", image: "7.jpg", isVisited: false),
           Restaurant(name: "學生食堂", type: "餐廳", location: "No. 70, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 4336", summary: "Great value for money! !100$ set menu is rich in dishes.There are three kinds of side dishes.Also included with dessert, tea bowl steamed, soup.Unlimited supply of winter melon tea.I want to eat a whole richer and go to this place.", image: "8.jpg", isVisited: false),
           Restaurant(name: "陳媽媽小吃店", type: "熟食店", location: "No. 64, Section 3, Zhongshan Road, Shoufeng Township, Hualien County, 974", phone: "03 866 3279", summary: "Limited seats available. Their dumpling is so so but their soup noodle tastes amazing!! I wanted to try their beef noodle (their best seller) but it was not available that day haha!.", image: "9.jpg", isVisited: false),
           Restaurant(name: "賀田屋", type: "餐廳", location: "No. 125, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 2095", summary: "Owner is really friendly and provides vegan options for customers. The basil fried rice with pineapple is the best.", image: "10.jpg", isVisited: false),
           Restaurant(name: "優派脆皮雞排 志學店", type: "熟食店", location: "No. 191號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "0965 113 515", summary: "Nice flying place.", image: "11.jpg", isVisited: false),
           Restaurant(name: "港龍燒臘便當", type: "餐廳", location: "No. 99號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 3901", summary: "The soup is very hot, you can go to the refrigerator to get Yakult to moisturize,The dishes are fresh", image: "12.jpg", isVisited: false),
           Restaurant(name: "齊庭簡餐", type: "餐廳", location: "No. 201號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "0982 918 405", summary: "The relatively high cp value of the shop on Zhixue Street, the chicken steak is super large and very delicious.Some freshly fried main dishes are also very good", image: "13.jpg", isVisited: false),
           Restaurant(name: "牛排先生 東華店", type: "餐廳", location: "No. 142號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 1235", summary: "The quality is very different.Ordered sirloin steak for 7 minutes.I got a plate of beef jerky", image: "14.jpg", isVisited: false),
           Restaurant(name: "2派克雞排-東華店", type: "餐廳", location: "No. 23號, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "03 866 3902", summary: " Very delicious fried chicken and tofu", image: "15.jpg", isVisited: false),
           Restaurant(name: "小姨拌麵", type: "餐廳", location: "No. 148號之3, Zhongzheng Road, Shoufeng Township, Hualien County, 97443", phone: "03 866 4999", summary: "Noodles was really good", image: "16.jpg", isVisited: false),
           Restaurant(name: "好味關東煮", type: "餐廳", location: "No. 54, Zhongzheng Road, Shoufeng Township, Hualien County, 974", phone: "643-332323", summary: "Ordinary and delicious oden", image: "17.jpg", isVisited: false),
           

       ]
    }
       
}

