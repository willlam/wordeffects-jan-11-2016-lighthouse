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
  


  printf("Input a string\n"); //getting a string input from user
  fgets(inputChars, 255, stdin);
  
  
// printf("Your string is %s\n", inputChars);
 
 NSString *inputString = [NSString stringWithUTF8String:inputChars];
  
  
  NSLog(@"Your input string was: %@", inputString);
  
  NSString *upperCase = [inputString uppercaseString];
  NSLog(@"%@", upperCase);
  
  NSString *lowerCase = [inputString lowercaseString];
  NSLog(@"%@", lowerCase);
  
  if ([inputString isMatchedByRegex:@"[^a-zA-Z0-9]"]) {
    NSLog(@"This string contains illegal characters");
  }
  
  NSString *concatenate = [inputString stringByAppendingString:@", eh?"];
   NSLog(@"%@", concatenate);
 
  // NSlog(@"%"@, upper);
  
    return 0;
}
