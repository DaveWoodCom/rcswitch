//
//  RCSwitchRayWenderlich.m
//  RCSwitch
//
//  Created by Dave Wood on 2013-03-24.
//
//

#import "RCSwitchRayWenderlich.h"

@interface RCSwitchRayWenderlich ()
{
	UILabel *onText;
	UILabel *offText;
}

@end

@implementation RCSwitchRayWenderlich

- (UIImage *)imageForKey:(RC_SliderImageKey)key
{
    switch (key)
    {
        case RC_kSliderOff:
        case RC_kSliderOn:
            return [[UIImage imageNamed:@"switchBackground"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 12, 0, 12)];
            break;

        case RC_kSliderThumb:
        case RC_kSliderThumbPressed:
            return [UIImage imageNamed:@"switchHandle"];
            break;

        default:
            break;
    }
    
    return [super imageForKey:key];
}

- (void)initCommon
{
	[super initCommon];

    self.drawHeight = self.bounds.size.height;
    self.knobOffset = CGSizeMake(0, -2);
    [self setKnobWidth:[self imageForKey:RC_kSliderThumb].size.width];
    [self regenerateImages];

    onText = [UILabel new];
    onText.text = NSLocalizedString(@"ON", @"Switch localized string");
    onText.textColor = [UIColor whiteColor];
    onText.font = [UIFont boldSystemFontOfSize:14];
    onText.shadowColor = [UIColor colorWithRed:104.0/255 green:73.0/255 blue:54.0/255 alpha:1.0];
    onText.shadowOffset = CGSizeMake(0, 1);

    offText = [UILabel new];
    offText.text = NSLocalizedString(@"OFF", @"Switch localized string");
    offText.textColor = [UIColor colorWithRed:104.0/255 green:73.0/255 blue:54.0/255 alpha:1.0];
    offText.font = [UIFont boldSystemFontOfSize:14];
    offText.shadowColor = [UIColor whiteColor];
    offText.shadowOffset = CGSizeMake(0, 1);
}

- (void)drawUnderlayersInRect:(CGRect)aRect withOffset:(float)offset inTrackWidth:(float)trackWidth
{
	{
		CGRect textRect = [self bounds];
        textRect.size = CGSizeMake(63, 23);
		textRect.origin.x += 14.0 + (offset - trackWidth);
        textRect.origin.y = textRect.origin.y;
		[onText drawTextInRect:textRect];
	}

	{
		CGRect textRect = [self bounds];
        textRect.size = CGSizeMake(63, 23);
        textRect.origin.y = textRect.origin.y;
		textRect.origin.x += (offset + trackWidth) - 12.0;
		[offText drawTextInRect:textRect];
	}
}

@end
