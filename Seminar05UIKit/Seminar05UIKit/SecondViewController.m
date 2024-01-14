//
//  SecondViewController.m
//  Seminar05UIKit
//
//  Created by Герман Яренко on 14.01.24.
//

#import "SecondViewController.h"
#import "Loader.h"

@interface SecondViewController ()

@property (nonatomic, strong) Loader *loader;
@property (nonatomic, strong) UITextField *textField1;
@property (nonatomic, strong) UITextField *textField2;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loader = [Loader new];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.textField1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, self.view.bounds.size.width - 40, 40)];
    self.textField1.borderStyle = UITextBorderStyleRoundedRect;
    self.textField1.placeholder = @"Variable 1";
    [self.view addSubview:self.textField1];
    
    self.textField2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 150, self.view.bounds.size.width - 40, 40)];
    self.textField2.borderStyle = UITextBorderStyleRoundedRect;
    self.textField2.placeholder = @"Variable 2";
    [self.view addSubview:self.textField2];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, self.view.bounds.size.height - 80, self.view.bounds.size.width - 40, 40);
    [button setTitle:@"Send" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(sendButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)sendButtonTapped {
    NSDictionary *arguments = @{@"var1": self.textField1.text, @"var2": self.textField2.text};
    
    [self.loader performPostRequestFromURL:@"https://postman-echo.com/post" arguments:arguments block:^(NSDictionary *dictionary, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Response" message:[dictionary description] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
            [alertController addAction:okAction];
            [self presentViewController:alertController animated:YES completion:nil];
        });
    }];
}

@end

