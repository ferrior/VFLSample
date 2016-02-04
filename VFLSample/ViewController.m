//
//  ViewController.m
//  VFLSample
//
//  Created by bliu on 2/3/16.
//  Copyright © 2016 bliu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UILabel* label = [[UILabel alloc]init];
	label.text = @"Hello";
	label.backgroundColor = [UIColor greenColor];
	label.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:label];

	NSArray *constraints1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[label]"
																	options:0
																	metrics:@{@"margin":@60}
																	  views:NSDictionaryOfVariableBindings(label)];
	NSArray *constraints2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50-[label]"
																	options:0
																	metrics:nil
																	  views:NSDictionaryOfVariableBindings(label)];
	[self.view addConstraints:constraints1];
	[self.view addConstraints:constraints2];
	
	UILabel* anotherHello = [[UILabel alloc]init];
	anotherHello.text = @"anotherHello";
	anotherHello.backgroundColor = [UIColor greenColor];
	anotherHello.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:anotherHello];
	
	//NSLayoutFormatAlignAllLeft make the label and anotherHello align left
	//NSLayoutFormatAlignAllLeft|NSLayoutFormatAlignAllRight together make label and anotherHello align left and right. also the same width
	NSArray *constraints11 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[label]-gap-[anotherHello]"
																	options:NSLayoutFormatAlignAllLeft|NSLayoutFormatAlignAllRight
																	metrics:@{@"gap":@30}
																	  views:NSDictionaryOfVariableBindings(label,anotherHello)];
	
	[self.view addConstraints:constraints11];
	
	UILabel* labelLeft = [[UILabel alloc]init];
	labelLeft.text = @"Left";
	labelLeft.backgroundColor = [UIColor greenColor];
	labelLeft.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:labelLeft];
	
	UILabel* labelA = [[UILabel alloc]init];
	labelA.text = @"labelA";
	labelA.backgroundColor = [UIColor greenColor];
	labelA.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:labelA];
	
	UILabel* labelRight = [[UILabel alloc]init];
	labelRight.text = @"Right";
	labelRight.backgroundColor = [UIColor greenColor];
	labelRight.translatesAutoresizingMaskIntoConstraints = NO;
	[self.view addSubview:labelRight];
	

	NSArray *constraints3 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-150-[labelLeft]"
																	options:0
																	metrics:nil
																	  views:NSDictionaryOfVariableBindings(labelLeft)];
	[self.view addConstraints:constraints3];
/*		
   NSArray *constraints4 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-150-[labelA]"
																	options:0
																	metrics:nil
																	  views:NSDictionaryOfVariableBindings(labelA)];
	
	NSArray *constraints5 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-150-[labelRight]"
																	options:0
																	metrics:nil
																	  views:NSDictionaryOfVariableBindings(labelRight)];
	

	[self.view addConstraints:constraints4];
	[self.view addConstraints:constraints5];
	//Add option NSLayoutFormatAlignAllCenterY to constraints6, then we don't need constraints4 and constraints5
 */
	NSArray *constraints6 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[labelLeft]-[labelA]-[labelRight]-|"
																	options:NSLayoutFormatAlignAllCenterY
																	metrics:nil
																	  views:NSDictionaryOfVariableBindings(labelLeft,labelA,labelRight)];

	[self.view addConstraints:constraints6];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
