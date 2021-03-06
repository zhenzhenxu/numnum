//
//  UIHelper.m
//  xiwu
//
//  Created by yzk on 14-7-21.
//  Copyright (c) 2014年 cooperLink. All rights reserved.
//

#import "UIHelper.h"

@implementation UIHelper

+ (MBProgressHUD *)showIndicatorToView:(UIView*)v
{
    return [MBProgressHUD showHUDAddedTo:v animated:YES];
}

+ (MBProgressHUD *)showIndicatorWithText:(NSString *)text ToView:(UIView*)v{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:v animated:YES];
    hud.labelText = text;
    hud.mode = MBProgressHUDModeIndeterminate;
    return hud;
}

+ (MBProgressHUD *)showText:(NSString*)text ToView:(UIView*)v{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:v animated:YES];
    hud.labelText = text;
    hud.mode = MBProgressHUDModeText;
    hud.margin = 15.f;
    [hud hide:YES afterDelay:2];
    return hud;
}

+ (void)hideHUDWithCompletedText:(NSString *)text forView:(UIView *)view
{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:view];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark.png"]];
    hud.mode = MBProgressHUDModeCustomView;
    hud.labelText = text;
    [hud hide:YES afterDelay:1];
}

+ (void)hideSingleHUDForView:(UIView *)view
{
    [MBProgressHUD hideHUDForView:view animated:NO];
}

+ (void)hideHUDForView:(UIView *)view
{
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

+ (UIAlertView *)alertWithMsg:(NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];

    [alert show];
    return alert;
}

+ (UIAlertView *)alertWithTitle:(NSString*)title andMsg:(NSString*)msg{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    return alert;
}
//
//+ (BOAlertController *)alertWithMsg:(NSString*)msg viewController:(UIViewController *)viewController action:(void (^)(void))action
//{
//    BOAlertController *alert = [[BOAlertController alloc] initWithTitle:@"" message:msg viewController:viewController];
//    RIButtonItem *item = [RIButtonItem itemWithLabel:@"确定"
//                                                type:RIButtonItemType_Cancel
//                                              action:action];
//    [alert addButton:item];
//    [alert show];
//    return alert;
//}
//
//+ (BOAlertController *)alertWithMsg:(NSString*)msg viewController:(UIViewController *)viewController confirmAction:(void (^)(void))confirmAction cancelAction:(void (^)(void))cancelAction
//{
//    BOAlertController *alert = [[BOAlertController alloc] initWithTitle:@"" message:msg viewController:viewController];
//    RIButtonItem *confirmItem = [RIButtonItem itemWithLabel:@"确定"
//                                                       type:RIButtonItemType_Other
//                                                     action:confirmAction];
//    RIButtonItem *cancelItem = [RIButtonItem itemWithLabel:@"取消"
//                                                      type:RIButtonItemType_Cancel
//                                                    action:cancelAction];
//    [alert addButton:confirmItem];
//    [alert addButton:cancelItem];
//    [alert show];
//    return alert;
//}
//
//+ (BOAlertController *)alertWithTitle:(NSString*)title msg:(NSString*)msg viewController:(UIViewController *)viewController action:(void (^)(void))action
//{
//    BOAlertController *alert = [[BOAlertController alloc] initWithTitle:title message:msg viewController:viewController];
//    RIButtonItem *item = [RIButtonItem itemWithLabel:@"确定"
//                                                type:RIButtonItemType_Cancel
//                                              action:action];
//    [alert addButton:item];
//    [alert show];
//    return alert;
//}
//
//+ (BOAlertController *)alertWithTitle:(NSString*)title msg:(NSString*)msg viewController:(UIViewController *)viewController confirmAction:(void (^)(void))confirmAction cancelAction:(void (^)(void))cancelAction
//{
//    BOAlertController *alert = [[BOAlertController alloc] initWithTitle:title message:msg viewController:viewController];
//    RIButtonItem *confirmItem = [RIButtonItem itemWithLabel:@"确定"
//                                                       type:RIButtonItemType_Other
//                                                     action:confirmAction];
//    RIButtonItem *cancelItem = [RIButtonItem itemWithLabel:@"取消"
//                                                      type:RIButtonItemType_Cancel
//                                                    action:cancelAction];
//    [alert addButton:confirmItem];
//    [alert addButton:cancelItem];
//    [alert show];
//    return alert;
//}

@end
