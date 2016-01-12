//
//  main.m
//  WordEffects
//
//  Created by William Lam on 2016-01-11.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

  char inputChars[255];
  
  
  
  NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
  
  /// variables

  
  printf("Input a string\n"); //getting a string input from user
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
//  if ([inputString isMatchedByRegex:@"[^a-zA-Z0-9]"]) {
//    NSLog(@"This string contains illegal characters");
//  }
//  
  NSString *concatenate = [inputString stringByAppendingString:@", eh?"];
   NSLog(@"%@", concatenate);
 
  
    return 0;
}
