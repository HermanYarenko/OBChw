//
//  ViewController.m
//  Seminar05UIKit
//
//  Created by Daniil Rassadin on 13/1/24.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "Loader.h"

@interface ViewController ()

@property (nonatomic, strong) Loader *loader;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.editable = NO;
    [self.view addSubview:self.textView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, self.view.bounds.size.height - 80, self.view.bounds.size.width - 40, 40);
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(nextButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [self performLoadingForGetRequest];
}

- (void)performLoadingForGetRequest {
    [self.loader performGetRequestFromURL:@"https://postman-echo.com/get" arguments:@{@"var1": @"first", @"var2": @"second"} block:^(NSDictionary *dictionary, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            
            self.textView.text = [dictionary description];
        });
    }];
}

- (void)nextButtonTapped {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end
