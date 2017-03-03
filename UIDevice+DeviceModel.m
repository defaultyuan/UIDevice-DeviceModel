//
//  UIDevice+DeviceModel.m
//  TestDemo
//
//  Created by DefaultYuan on 2017/3/3.
//  Copyright © 2017年 https://github.com/DefaultYuan/UIDevice-DeviceModel.git. All rights reserved.
//

#import "UIDevice+DeviceModel.h"
#include <sys/sysctl.h>

@implementation UIDevice (DeviceModel)

- (nonnull NSString *) deviceModel
{
    NSString *machineName = [self machineName];
    
    NSString *phoneModelStr = [self deviceNamesByMachine:machineName];
    return phoneModelStr;
}

- (nonnull NSString *) getSysInfoByName:(char *)typeSpecifier
{
    size_t size;
    sysctlbyname(typeSpecifier, NULL, &size, NULL, 0);
    
    char *answer = malloc(size);
    sysctlbyname(typeSpecifier, answer, &size, NULL, 0);
    
    NSString *results = [NSString stringWithCString:answer encoding: NSUTF8StringEncoding];
    
    free(answer);
    return results;
}

- (nonnull NSString *) machineName
{
    return [self getSysInfoByName:"hw.machine"];
}

- (nonnull NSString *)deviceNamesByMachine:(NSString *)machine
{
    //iPhone
    if ([machine isEqualToString:@"iPhone1,1"])    return @"iPhone 1G";
    if ([machine isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([machine isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([machine isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([machine isEqualToString:@"iPhone3,3"])    return @"iPhone 4 (CDMA/Verizon/Sprint)";
    if ([machine isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([machine isEqualToString:@"iPhone5,1"])    return @"iPhone 5 (GSM)";
    if ([machine isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    if ([machine isEqualToString:@"iPhone5,3"])    return @"iPhone 5C (GSM)";
    if ([machine isEqualToString:@"iPhone5,4"])    return @"iPhone 5C (GSM+CDMA)";
    if ([machine isEqualToString:@"iPhone6,1"])    return @"iPhone 5S (GSM)";
    if ([machine isEqualToString:@"iPhone6,2"])    return @"iPhone 5S (GSM+CDMA)";
    if ([machine isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([machine isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([machine isEqualToString:@"iPhone8,1"])    return @"iPhone 6S";
    if ([machine isEqualToString:@"iPhone8,2"])    return @"iPhone 6S Plus";
    if ([machine isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    if ([machine isEqualToString:@"iPhone9,1"])    return @"iPhone 7 (CDMA)";
    if ([machine isEqualToString:@"iPhone9,3"])    return @"iPhone 7 (GSM)";
    if ([machine isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus (CDMA)";
    if ([machine isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus (GSM)";
    
    //iPod
    if ([machine isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([machine isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([machine isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([machine isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    if ([machine isEqualToString:@"iPod5,1"])      return @"iPod Touch 5G";
    if ([machine isEqualToString:@"iPod7,1"])      return @"iPod Touch 6G";
    
    //iPad
    if ([machine isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([machine isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
    if ([machine isEqualToString:@"iPad2,2"])      return @"iPad 2 (GSM)";
    if ([machine isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
    if ([machine isEqualToString:@"iPad2,4"])      return @"iPad 2 (WiFi)";
    if ([machine isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
    if ([machine isEqualToString:@"iPad2,6"])      return @"iPad Mini (GSM)";
    if ([machine isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
    if ([machine isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
    if ([machine isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
    if ([machine isEqualToString:@"iPad3,3"])      return @"iPad 3 (GSM)";
    if ([machine isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
    if ([machine isEqualToString:@"iPad3,5"])      return @"iPad 4 (GSM)";
    if ([machine isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
    if ([machine isEqualToString:@"iPad4,1"])      return @"iPad Air (WiFi)";
    if ([machine isEqualToString:@"iPad4,2"])      return @"iPad Air (Cellular)";
    if ([machine isEqualToString:@"iPad4,3"])      return @"iPad Air (Cellular)";
    if ([machine isEqualToString:@"iPad4,4"])      return @"iPad Mini 2G (WiFi)";
    if ([machine isEqualToString:@"iPad4,5"])      return @"iPad Mini 2G (Cellular)";
    if ([machine isEqualToString:@"iPad4,6"])      return @"iPad Mini 2G (Cellular)";
    if ([machine isEqualToString:@"iPad4,7"])      return @"iPad Mini 3G (Wifi)";
    if ([machine isEqualToString:@"iPad4,8"])      return @"iPad Mini 3G (Cellular)";
    if ([machine isEqualToString:@"iPad4,9"])      return @"iPad Mini 3G (Cellular)";
    if ([machine isEqualToString:@"iPad5,1"])      return @"iPad Mini 4G (Wifi)";
    if ([machine isEqualToString:@"iPad5,2"])      return @"iPad Mini 4G (Cellular)";
    if ([machine isEqualToString:@"iPad5,3"])      return @"iPad Air 4G (Wifi)";
    if ([machine isEqualToString:@"iPad5,4"])      return @"iPad Air 4G (Cellular)";
    if ([machine isEqualToString:@"iPad6,3"])      return @"iPad PRO 12.9 (Wifi)";
    if ([machine isEqualToString:@"iPad6,4"])      return @"iPad PRO 12.9 (Cellular)";
    if ([machine isEqualToString:@"iPad6,7"])      return @"iPad PRO 9.7 (Wifi)";
    if ([machine isEqualToString:@"iPad6,8"])      return @"iPad PRO 9.7 (Cellular)";
    
    //Simulator
    if ([machine isEqualToString:@"i386"])         return @"Simulator 32-bit";
    if ([machine isEqualToString:@"x86_64"])       return @"Simulator 64-bit";
    
    return @"Unknown iOS Device";
}
@end
