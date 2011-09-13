//
//  CalculatorBrain.h
//  Calculator
//
//  Created by William Lee on 12/09/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

@property double operand;
@property double memStore;
@property (retain, nonatomic) NSString *waitingOperation;
@property double waitingOperand;
-(double)performOperation:(NSString *)operation;
@end
