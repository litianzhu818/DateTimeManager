//
//  DateTimeTools.m
//  DateTimeDemo
//
//  Created by Peter Lee on 14-4-11.
//  Copyright (c) 2014年 Peter Lee. All rights reserved.
//

#import "DateTimeManager.h"

@implementation DateTimeManager
Single_implementation(DateTimeManager)

-(DateTime *)dateTime
{
    if (_dateTime == nil) {
        _dateTime = [[DateTime alloc] init];
    }
    return _dateTime;
}

-(NSString *)getStandardFormatterLoaclTimeString
{
    return [self getLocalTimeStringWithDateFormatterString:@"YYYYMMddHHmmss"];
}

-(NSString *)getLocalTimeStringWithDateFormatterString:(NSString *)str
{
    return [[self dateTime] getLocalTimeStringWithDateFormatterString:str];
}
//获取年的字符串
-(NSInteger *)getYearString
{
    return [self.dateTime getYearString];
}
//获取月的字符串
-(NSInteger *)getMonthString
{
    return [self.dateTime getMonthString];
}
//获取天得字符串
-(NSInteger *)getDayString
{
    return [self.dateTime getDayString];
}
//获取小时的字符串
-(NSInteger *)getHourString
{
    return [self.dateTime getHourString];
}
//获取分钟的字符串
-(NSInteger *)getMinuteString
{
    return [self.dateTime getMinuteString];
}
//获取秒的字符串
-(NSInteger *)getSecondString
{
    return [self.dateTime getSecondString];
}


@end
