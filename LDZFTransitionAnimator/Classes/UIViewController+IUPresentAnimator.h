//
//  UIViewController+IUPresentAnimator.h
//  CRJIUBaseTransitionAnimator
//
//  Created by zhuyuhui on 2020/12/12.
//

#import <UIKit/UIKit.h>
#import "IUBaseTransitionAnimator.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (IUPresentAnimator)
- (void)presentViewController:(UIViewController *)viewControllerToPresent
                    animation:(IUBaseTransitionAnimator *)animation
                   completion:(void (^ __nullable)(void))completion;
@end

NS_ASSUME_NONNULL_END
