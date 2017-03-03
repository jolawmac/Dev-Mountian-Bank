//
//  EntryListTableViewController.m
//  JournalWeek5
//
//  Created by Josh & Erica on 2/27/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "EntryController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [EntryController sharedController].entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entry = [EntryController sharedController].entries[indexPath.row];
    
    cell.textLabel.text = entry;
    
    
    return cell;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    if ([segue.identifier isEqualToString:@"viewEntry"]) {
        NSIndexPath *indexpath = [self.tableView indexPathForCell:sender];
        
        
        
    }
    
}


@end
