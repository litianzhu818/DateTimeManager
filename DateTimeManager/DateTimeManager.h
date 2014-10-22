//
//  DateTimeTools.h
//  DateTimeDemo
//
//  Created by Peter Lee on 14-4-11.
//  Copyright (c) 2014年 Peter Lee. All rights reserved.
//

#import "DateTime.h"
#import "SingletonManager.h"

@interface DateTimeManager : NSObject
Single_interface(DateTimeManager)

@property(nonatomic,strong)DateTime *dateTime;

//获取年的字符串
-(NSInteger *)getYearString;
//获取月的字符串
-(NSInteger *)getMonthString;
//获取天得字符串
-(NSInteger *)getDayString;
//获取小时的字符串
-(NSInteger *)getHourString;
//获取分钟的字符串
-(NSInteger *)getMinuteString;
//获取秒的字符串
-(NSInteger *)getSecondString;
//获取标准时间字符串
-(NSString *)getStandardFormatterLoaclTimeString;
//根据输入的日期格式获取该格式的时间的字符串
-(NSString *)getLocalTimeStringWithDateFormatterString:(NSString *)str;

@end
