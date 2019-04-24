//
//  TableViewCell.h
//  customcellintableviewController
//
//  Created by JETS Mobile Lab -  on 4/24/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelone;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *labeltwo;

@end

NS_ASSUME_NONNULL_END
