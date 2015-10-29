//
//  ViewController.m
//  BlockDemo1
//
//  Created by nate on 15/8/4.
//  Copyright (c) 2015年 nate. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.title = @"First View";
}

-(void)initUI{
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake(87, 100, 200, 44)];
    [btn setTitle:@"惦记我" forState:UIControlStateNormal];
    btn.layer.cornerRadius = 5.0f;
    
    btn.backgroundColor = [UIColor redColor];
    
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(87, 160, 200, 100)];
    label.tag = 2000;
    label.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:label];
}

-(void)btnClicked:(id)sender{
    
    SecondViewController* secondView = [[SecondViewController alloc] init];
    
    secondView.blk_t = ^(NSString* textFiled){
        [self setLableText:textFiled];        
            };
    
    [self.navigationController pushViewController:secondView animated:YES];
}

-(void)setLableText:(NSString*) text{
    UILabel* label = (UILabel*)[self.view viewWithTag:2000];
    
    if (label) {
        [label setText:text];
    }
}












@end
