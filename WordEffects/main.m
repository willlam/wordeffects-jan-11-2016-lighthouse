//
//  main.m
//  WordEffects
//
//  Created by William Lam on 2016-01-11.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
  while (true)  {
    
    char inputInt[255];
    char inputChars[255];
    
    
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    
    /// variables
    
    printf("Choose one of the options below!\n");
    printf("1. I wanna make my input string LOUD!\n");
    printf("2. I wanna make my input string *quiet* shhh\n");
    printf("3. I want you to tell me if there's numbers in my input\n");
    printf("4. I want you to Canadianize my input, eh?\n");
    printf("5. I want you to respond to me\n");
    printf("6. I want my input to be said all in one breath\n");
    printf("Enter a number from 1-6 and then your string\n"); //getting a string input from user
    
    fgets(inputInt, 255, stdin);
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    
    NSLog(@"Your input string was: %@", inputString);
    
    NSString *upperCase = [inputString uppercaseString];
    NSLog(@"%@", upperCase);
    
    NSString *lowerCase = [inputString lowercaseString];
    NSLog(@"%@", lowerCase);
    
    //Sanitize number string
    
    NSCharacterSet *charactersToRemove = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    
    NSString *sanitizedString = [[inputString componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""];
    
    NSNumber *presenceNumber = [numberFormatter numberFromString: sanitizedString];
    
    
    
    NSLog(@"The number in your string is %@", presenceNumber);
    
    NSString *concatenate = [inputString stringByAppendingString:@", eh?"];
    NSLog(@"%@", concatenate);
    
    NSString *respond = inputString;
    
    if ([respond hasSuffix:@"?"]) {
      NSLog(@"I don't know.");
    } else if ([respond hasSuffix:@"!"]) {
      NSLog(@"Whoa, calm down!");
    }
    
    return 0;
  }
}