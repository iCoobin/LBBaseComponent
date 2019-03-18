//
//  LBTheme.h
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LBThemeProtocol <NSObject>

@required
@property (nonatomic, strong ,readonly) UIColor *mainColor;
@property (nonatomic, strong ,readonly) UIColor *bgColor;

@property (nonatomic, strong, readonly) UIColor *fontColor0;
@property (nonatomic, strong, readonly) UIColor *fontColor1;
@property (nonatomic, strong, readonly) UIColor *fontColor2;
@property (nonatomic, strong, readonly) UIColor *fontColor3;
@property (nonatomic, strong, readonly) UIColor *fontColor4;

@property (nonatomic, assign, readonly) CGFloat fontSize1;
@property (nonatomic, assign, readonly) CGFloat fontSize2;
@property (nonatomic, assign, readonly) CGFloat fontSize3;
@property (nonatomic, assign, readonly) CGFloat fontSize4;

@end

@interface LBTheme : NSObject <LBThemeProtocol>

@property (nonatomic, strong ,readonly) UIColor *mainColor;
@property (nonatomic, strong ,readonly) UIColor *bgColor;

@property (nonatomic, strong, readonly) UIColor *fontColor0;
@property (nonatomic, strong, readonly) UIColor *fontColor1;
@property (nonatomic, strong, readonly) UIColor *fontColor2;
@property (nonatomic, strong, readonly) UIColor *fontColor3;
@property (nonatomic, strong, readonly) UIColor *fontColor4;

@property (nonatomic, assign, readonly) CGFloat fontSize1;
@property (nonatomic, assign, readonly) CGFloat fontSize2;
@property (nonatomic, assign, readonly) CGFloat fontSize3;
@property (nonatomic, assign, readonly) CGFloat fontSize4;

@end

NS_ASSUME_NONNULL_END
