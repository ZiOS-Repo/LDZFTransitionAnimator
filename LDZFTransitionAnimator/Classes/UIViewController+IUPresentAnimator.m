//
//  UIViewController+IUPresentAnimator.m
//  CRJIUBaseTransitionAnimator
//
//  Created by zhuyuhui on 2020/12/12.
//

#import "UIViewController+IUPresentAnimator.h"
#import "IUCustomPresentationController.h"

@implementation UIViewController (IUPresentAnimator)
- (void)presentViewController:(UIViewController *)viewControllerToPresent animation:(IUBaseTransitionAnimator *)animation completion:(void (^)(void))completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        IUCustomPresentationController *presentingVC = [[IUCustomPresentationController alloc] initWithPresentedViewController:viewControllerToPresent presentingViewController:self];
        viewControllerToPresent.transitioningDelegate = presentingVC;
        presentingVC.animation = animation;
        [self presentViewController:viewControllerToPresent animated:YES completion:nil];
    });
}

@end
