//
//  BIDNameAndColorCell.m
//  Cells
//
//  Created by JMac on 28.02.13.
//  Copyright (c) 2013 JMac. All rights reserved.
//

#import "BIDNameAndColorCell.h"

@implementation BIDNameAndColorCell
{
    UILabel *_nameValue;
    UILabel *_colorValue;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style
    reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        CGRect nameLabelRect = CGRectMake(0, 5, 70, 15);
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRect];
        nameLabel.textAlignment = NSTextAlignmentRight;
        nameLabel.text = @"Name:";
        nameLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview: nameLabel];
        CGRect colorLabelRect = CGRectMake(0, 26, 70, 15);
        UILabel *colorLabel = [[UILabel alloc] initWithFrame:colorLabelRect];
        colorLabel.textAlignment = NSTextAlignmentRight;
        colorLabel.text = @"Color:";
        colorLabel.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview: colorLabel];
        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
        _nameValue = [[UILabel alloc] initWithFrame:
                      nameValueRect];
        [self.contentView addSubview:_nameValue];
        CGRect colorValueRect = CGRectMake(80, 25, 200, 15);
        _colorValue = [[UILabel alloc] initWithFrame:
                       colorValueRect];
        [self.contentView addSubview:_colorValue];
    }
    return self;
}

@end
