//
//  AN_EmailAddress.h
//  Polldaddy
//
//  Created by John Godley on 08/07/2010.
//  Copyright 2010 Automattic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Answer.h"

@class Question;

@interface AN_EmailAddress : Answer {
	NSString *email;
}

- (Answer *) initWithXML:(TBXMLElement *)node;
- (NSString *) summaryForQuestion:(Question *)question;

@end
