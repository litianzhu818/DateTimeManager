//
//  DateTime.h
//  DateTimeDemo
//
//  Created by Peter Lee on 14-4-11.
//  Copyright (c) 2014年 Peter Lee. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface DateTime : NSObject

//获取年的字符串
-(NSInteger *)getYearString;
//获取月的字符串
-(NSInteger *)getMonthString;
//获取天得字符串
-(NSInteger *)getDayString;
//获取小时的字符串s
-(NSInteger *)getHourString;
//获取分钟的字符串
-(NSInteger *)getMinuteString;
//获取秒的字符串
-(NSInteger *)getSecondString;

-(NSString *)getLocalTimeStringWithDateFormatterString:(NSString *)str;

@end
