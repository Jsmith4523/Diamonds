//
//  ViewController.m
//  Diamonds
//
//  Created by Jaylen Smith on 1/19/23.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

NSString *imagesStr[3] = {@"diamond", @"Icon-29", @"Icon-40"};

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Diamonds";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"diamond"];
    cell.textLabel.text = imagesStr[indexPath.item];
    cell.imageView.image = [UIImage imageNamed: imagesStr[indexPath.item]];
        
    return cell;
}


@end
