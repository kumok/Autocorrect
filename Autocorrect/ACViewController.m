//
//  ACViewController.m
//  Autocorrect
//
//  Created by Duc Ho on 1/21/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ACViewController.h"

@interface ACViewController ()

@end

@implementation ACViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    for (int i = 0; i<8; i++) {
        float x = self.view.frame.size.width * i;
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(x, 0, self.view.frame.size.width, self.view.frame.size.height)];
        
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]];
        
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [scrollView addSubview:imageView];
    }
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 8, 0);
    scrollView.pagingEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
