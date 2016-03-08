/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceAttendee
 *
 */
@implementation MSGraphServiceAttendee


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"status", @"status", @"type", @"type", @"emailAddress", @"emailAddress", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.attendee";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_status = (![dic objectForKey: @"status"] || [ [dic objectForKey: @"status"] isKindOfClass:[NSNull class]] )?_status:[[MSGraphServiceResponseStatus alloc] initWithDictionary: [dic objectForKey: @"status"]];
		_type = (![dic objectForKey: @"type"] || [ [dic objectForKey: @"type"] isKindOfClass:[NSNull class]] )?_type:[MSGraphServiceAttendeeTypeSerializer fromString:[dic objectForKey: @"type"]];
		self.emailAddress = (![dic objectForKey: @"emailAddress"] || [ [dic objectForKey: @"emailAddress"] isKindOfClass:[NSNull class]] )?self.emailAddress:[[MSGraphServiceEmailAddress alloc] initWithDictionary: [dic objectForKey: @"emailAddress"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.status toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"status"];}
	{[dic setValue: [MSGraphServiceAttendeeTypeSerializer toString:self.type] forKey: @"type"];}
	{id curVal = [self.emailAddress toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"emailAddress"];}
    [dic setValue: @"#microsoft.graph.attendee" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.status;
    if([self.updatedValues containsObject:@"status"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"status"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"status"];
            }
        
            }}
 if([self.updatedValues containsObject:@"type"])
            { [dic setValue: [MSGraphServiceAttendeeTypeSerializer toString:self.type] forKey: @"type"];
}	{id curVal = self.emailAddress;
    if([self.updatedValues containsObject:@"emailAddress"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"emailAddress"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"emailAddress"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property status
 *
 */
- (void) setStatus: (MSGraphServiceResponseStatus *) value {
    _status = value;
    [self valueChangedFor:@"status"];
}
       
/** Setter implementation for property type
 *
 */
- (void) setType: (MSGraphServiceAttendeeType) value {
    _type = value;
    [self valueChangedFor:@"type"];
}
       

- (void)setTypeString:(NSString *)string {
        
    _type = [MSGraphServiceAttendeeTypeSerializer fromString:string];
    [self valueChangedFor:@"type"]; 
}


@end
