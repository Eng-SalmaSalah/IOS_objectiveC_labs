//
//  ImagesCollectionViewController.h
//  LoginAndRegistration
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SetImage.h"

@interface ImagesCollectionViewController : UICollectionViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property id<SetImage> registerationView;

@end
