//
//  DateTime.m
//  DateTimeDemo
//
//  Created by Peter Lee on 14-4-11.
//  Copyright (c) 2014年 Peter Lee. All rights reserved.
//

#import "DateTime.h"

@implementation DateTime
/**
 *  根据输入的日期格式输出日期的字符串
 *
 *  @param str 日期格式的字符串
 *
 *  @return 固定格式的日期字符串
 */
-(NSString *)getLocalTimeStringWithDateFormatterString:(NSString *)str
{
    //获得系统时间
    //str的全部格式yyyyMMddHHmmss组合
    NSDate *date=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:str];
    return [dateformatter stringFromDate:date];
}
/**
 *  获取系统的NSDateComponents对象
 *
 *  @return NSDateComponents对象
 */
-(NSDateComponents *)getDateComponentsFromCalendar
{
    //获得系统日期
    NSCalendar * cal=[NSCalendar currentCalendar];
    NSDate *date=[NSDate date];
    NSUInteger unitFlags=NSDayCalendarUnit|NSMonthCalendarUnit|NSYearCalendarUnit|kCFCalendarUnitEra|kCFCalendarUnitHour|kCFCalendarUnitMinute|kCFCalendarUnitSecond|kCFCalendarUnitWeek|kCFCalendarUnitWeekday|kCFCalendarUnitWeekdayOrdinal|kCFCalendarUnitQuarter|kCFCalendarUnitWeekOfMonth|kCFCalendarUnitWeekOfYear|kCFCalendarUnitYearForWeekOfYear;
    return [cal components:unitFlags fromDate:date];
}
//获取年的字符串
-(NSInteger *)getYearString
{
    return [[self getDateComponentsFromCalendar] year];
}
//获取月的字符串
-(NSInteger *)getMonthString
{
    return [[self getDateComponentsFromCalendar] month];
}
//获取天得字符串
-(NSInteger *)getDayString
{
    return [[self getDateComponentsFromCalendar] day];
}
//获取小时的字符串
-(NSInteger *)getHourString
{
    return [[self getDateComponentsFromCalendar] hour];
}
//获取分钟的字符串
-(NSInteger *)getMinuteString
{
    return [[self getDateComponentsFromCalendar] minute];
}
//获取秒的字符串
-(NSInteger *)getSecondString
{
    return [[self getDateComponentsFromCalendar] second];
}

/******************************全部的时间格式********************************/
//a: AM/PM (上午/下午)
//
//A: 0~86399999 (一天的第A微秒)
//
//c/cc: 1~7 (一周的第一天, 周天为1)
//
//ccc: Sun/Mon/Tue/Wed/Thu/Fri/Sat (星期几简写)
//
//cccc: Sunday/Monday/Tuesday/Wednesday/Thursday/Friday/Saturday (星期几全拼)
//
//d: 1~31 (月份的第几天, 带0)
//
//D: 1~366 (年份的第几天,带0)
//
//e: 1~7 (一周的第几天, 带0)
//
//E~EEE: Sun/Mon/Tue/Wed/Thu/Fri/Sat (星期几简写)
//
//EEEE: Sunday/Monday/Tuesday/Wednesday/Thursday/Friday/Saturday (星期几全拼)
//
//F: 1~5 (每月的第几周, 一周的第一天为周一)
//
//g: Julian Day Number (number of days since 4713 BC January 1) 未知
//
//G~GGG: BC/AD (Era Designator Abbreviated) 未知
//
//GGGG: Before Christ/Anno Domini 未知
//
//h: 1~12 (0 padded Hour (12hr)) 带0的时, 12小时制
//
//H: 0~23 (0 padded Hour (24hr))  带0的时, 24小时制
//
//k: 1~24 (0 padded Hour (24hr) 带0的时, 24小时制
//         
//K: 0~11 (0 padded Hour (12hr)) 带0的时, 12小时制
//         
//L/LL: 1~12 (0 padded Month)  第几月
//         
//LLL: Jan/Feb/Mar/Apr/May/Jun/Jul/Aug/Sep/Oct/Nov/Dec 月份简写
//         
//LLLL: January/February/March/April/May/June/July/August/September/October/November/December 月份全称
//         
//m: 0~59 (0 padded Minute) 分钟
//         
//M/MM: 1~12 (0 padded Month) 第几月
//         
//MMM: Jan/Feb/Mar/Apr/May/Jun/Jul/Aug/Sep/Oct/Nov/Dec
//         
//MMMM: January/February/March/April/May/June/July/August/September/October/November/December
//         
//q/qq: 1~4 (0 padded Quarter) 第几季度
//         
//qqq: Q1/Q2/Q3/Q4 季度简写
//         
//qqqq: 1st quarter/2nd quarter/3rd quarter/4th quarter 季度全拼
//         
//Q/QQ: 1~4 (0 padded Quarter) 同小写
//         
//QQQ: Q1/Q2/Q3/Q4 同小写
//         
//QQQQ: 1st quarter/2nd quarter/3rd quarter/4th quarter 同小写
//         
//s: 0~59 (0 padded Second) 秒数
//         
//S: (rounded Sub-Second) S: 毫秒
//         
//u: (0 padded Year) 未知
//         
//v~vvv: (General GMT Timezone Abbreviation) 常规GMT时区的编写
//         
//vvvv: (General GMT Timezone Name) 常规GMT时区的名称
//         
//w: 1~53 (0 padded Week of Year, 1st day of week = Sunday, NB: 1st week of year starts from the last Sunday of last year) 一年的第几周, 一周的开始为周日,第一周从去年的最后一个周日起算
//         
//W: 1~5 (0 padded Week of Month, 1st day of week = Sunday) 一个月的第几周
//         
//y/yyyy: (Full Year) 完整的年份
//         
//yy/yyy: (2 Digits Year)  2个数字的年份
//         
//Y/YYYY: (Full Year, starting from the Sunday of the 1st week of year) 这个年份未知干嘛用的
//        
//YY/YYY: (2 Digits Year, starting from the Sunday of the 1st week of year) 这个年份未知干嘛用的
//         
//z~zzz: (Specific GMT Timezone Abbreviation) 指定GMT时区的编写
//         
//zzzz: (Specific GMT Timezone Name) Z: +0000 (RFC 822 Timezone) 指定GMT时区的名称
/********************************************************************************************/

@end
