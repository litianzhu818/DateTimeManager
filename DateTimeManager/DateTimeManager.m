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

/**
 *  Get the UTC string from the local date string
 *
 *  @param localDate The local date string
 *
 *  @return The UTC string we will get
 */
-(NSString *)getUTCStringWithLocalDateString:(NSString *)localDate
{
    //将本地日期字符串转为UTC日期字符串
    //本地日期格式:2013-08-03 12:53:51
    //可自行指定输入输出格式
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //输入格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *dateFormatted = [dateFormatter dateFromString:localDate];
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    [dateFormatter setTimeZone:timeZone];
    //输出格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSString *dateString = [dateFormatter stringFromDate:dateFormatted];
    return dateString;
}
/**
 *  The local date string we get with the UTC date string
 *
 *  @param utcDate The UTC date string
 *
 *  @return The local date string we will get
 */
-(NSString *)getLocalDateStringWithUTCDateString:(NSString *)utcDate
{
    //将UTC日期字符串转为本地时间字符串
    //输入的UTC日期格式2013-08-03T04:53:51+0000
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //输入格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
    [dateFormatter setTimeZone:localTimeZone];
    
    NSDate *dateFormatted = [dateFormatter dateFromString:utcDate];
    //输出格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:dateFormatted];
    return dateString;
}
/**
 *  Get the UTC date string from the local date object
 *
 *  @param localDate The local date object
 *
 *  @return The UTC date string we will get
 */
- (NSString *)getUTCStringWithLocalDate:(NSDate *)localDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    [dateFormatter setTimeZone:timeZone];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    NSString *dateString = [dateFormatter stringFromDate:localDate];
    return dateString;
}
/**
 *  Get the local date object with the given UTC date string
 *
 *  @param utc The utc date string
 *
 *  @return The local date obejct we will get
 */
- (NSDate *)getLocalDateWithUTCString:(NSString *)utc
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSTimeZone *timeZone = [NSTimeZone localTimeZone];
    [dateFormatter setTimeZone:timeZone];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    NSDate *ldate = [dateFormatter dateFromString:utc];
    return ldate;
}
/**
 *  Get the date obejct With the given date string
 *
 *  @param strdate The given date string
 *
 *  @return The Date object we will get
 */
- (NSDate *)stringToDate:(NSString *)strdate
{
    //NSString 2 NSDate
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *retdate = [dateFormatter dateFromString:strdate];
    return retdate;
}
/**
 *  Get the date string with the given date object
 *
 *  @param date The given object
 *
 *  @return The string we will get
 */
- (NSString *)dateToString:(NSDate *)date
{
    //NSDate 2 NSString
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *strDate = [dateFormatter stringFromDate:date];
    return strDate;
}


@end
