//
//  UITextField+Extention.m
//  LBBaseComponent
//
//  Created by 程守斌 on 2019/3/18.
//

#import "UITextField+Extention.h"
#import <objc/runtime.h>

static NSString * const ABMaxLengthKey = @"ABMaxLengthKey";
@implementation UITextField (Extention)

- (instancetype)init {
    self = [super init];
    if (self) {
        self.autocorrectionType = UITextAutocorrectionTypeNo;
        self.autocapitalizationType = UITextAutocapitalizationTypeNone;
    }
    return self;
}

- (NSInteger)maxLength
{
    NSValue *maxLengthValue = objc_getAssociatedObject(self, &ABMaxLengthKey);
    if (maxLengthValue) {
        NSInteger maxLength;
        [maxLengthValue getValue:&maxLength];
        return maxLength;
    }
    
    return NSIntegerMax;
}

#pragma mark - Setter

- (void)setMaxLength:(NSInteger)maxLength{
    if (maxLength < 1) {
        maxLength = NSIntegerMax;
    }
    
    NSValue *value = [NSValue value:&maxLength withObjCType:@encode(NSInteger)];
    objc_setAssociatedObject(self, &ABMaxLengthKey, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self ab_textFieldTextChanged:self];
    [self removeTarget:self
                action:@selector(ab_textFieldTextChanged:)
      forControlEvents:UIControlEventEditingChanged];
    [self addTarget:self
             action:@selector(ab_textFieldTextChanged:)
   forControlEvents:UIControlEventEditingChanged];
}

- (void)ab_textFieldTextChanged:(UITextField *)textField{
    if (textField.text.length <= textField.maxLength) {
        return;
    } else {
        NSInteger adaptedLength = MIN(textField.text.length, textField.maxLength);
        NSRange range = NSMakeRange(0, adaptedLength);
        textField.text = [textField.text substringWithRange:range];
    }
}

@end
