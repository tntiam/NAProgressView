//
//  NAProgressView.h
//  ConvertSwiftToObjectiveC
//
//  Created by Tran Trong Nghia on 5/7/16.
//  Copyright © 2016 Tran Trong Nghia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NAProgressView : UIView
@property (assign, nonatomic) CGFloat progress;
@property (strong, nonatomic) UIColor *trackColor;
@property (strong, nonatomic) UIColor *progressColor;
@property (strong, nonatomic) UIImageView *trackImageView;
@property (strong, nonatomic) UIImageView *progressImageView;

@end
