//
//  CalculatorBrain.m
//  Calculator
//
//  Created by William Lee on 12/09/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain
@synthesize operand, waitingOperand, waitingOperation, memStore;
- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)performWaitingOperation
{
    if ([waitingOperation isEqual:@"+"])
    {
        operand = waitingOperand + operand;
    }
    
    else if ([waitingOperation isEqual:@"-"])
    {
        operand = waitingOperand - operand;
    }
    
    else if ([waitingOperation isEqual:@"*"])
    {
        operand = waitingOperand * operand;
    }
    else if ([waitingOperation isEqual:@"/"])
    {
        if (operand){
            operand = waitingOperand / operand;
        }
    }
}


-(double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"])
    {
        operand = sqrt(operand);
    }
    else if([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    
    else if([@"sin" isEqual:operation])
    {
        operand = sin(operand);
    }
    
    else if([@"cos" isEqual:operation])
    {
        operand = cos(operand);
    }
    
    else if ([@"store" isEqual:operation])
    {
        memStore = operand;
    }
    
    else if ([@"recall" isEqual:operation])
    {
        operand = memStore;
    }
    else if ([@"mem+" isEqual:operation])
    {
        operand = memStore + operand;
    }
    
    else if ([@"C" isEqual:operation])
    {
        operand = 0;
    }
    
    else if ([@"AC" isEqual:operation])
    {
        operand = 0;
        memStore = 0;
    }
    else 
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}

@end
