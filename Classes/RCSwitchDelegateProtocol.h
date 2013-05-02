//
//  RCSwitchDelegateProtocol.h
//  RCSwitch
//
//  Created by Wolfgang Timme on 4/28/13.
//
//

#import <Foundation/Foundation.h>

@class RCSwitch;

@protocol RCSwitchDelegate <NSObject>

@optional

/**
 * @details Is called when the switch changes it status.
 * @param rcSwitch The switch that emits the event.
 * @param on The new status of the switch.
 */
- (void)rcSwitch:(RCSwitch *)rcSwitch changedStatusTo:(BOOL)on;

@end
