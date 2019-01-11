//
//  main.m
//  FridayWeek1
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Father.h"
#import "Person.h"
#import "Teacher.h"
#import "ParentProtocol.h"
#import "Robot.h"
#import "Student+Study.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person  *p = [[Person alloc] init];
        Student *s = [[Student alloc] init];
        
        if([p isKindOfClass:[Person class]]){
            NSLog(@"person is kind of person");
        }
        
        if([s isKindOfClass:[Person class]]){
            NSLog(@"student is kind of person");
        }

        if([s isMemberOfClass:[Person class]]){
            NSLog(@"student is member of person");
        }
        
        if([p isKindOfClass:[Student class]]){
            NSLog(@"person is kind of student");
        }
        
        
        Person *ss = [[Student alloc] init];
        
        if([ss isKindOfClass:[Student class]]){
            NSLog(@"person ss is kind of student!!");
        }
        
        id dunno = [[Student alloc] init];
        
        if([dunno isKindOfClass:[Student class]]){
            NSLog(@"this thing is kind of student!!");
        }

        
        id object;
        id object2 = [[NSMutableArray alloc] init];
        SEL addSel = @selector(addObject:);
        if([object respondsToSelector:addSel]){
            [object performSelector:addSel
                         withObject:@"hello world"];
            // previous line equal to [object addObject:@"hello world"[;
            // but the if statement prevents a runtime crash
        }
        
        
        
        id sss = [[Student alloc] init];
        SEL learnSel = @selector(learn);
        if([sss respondsToSelector:learnSel]){
            [sss performSelector:learnSel];
        }
        
        id father = [[Father alloc] init];
        if([father respondsToSelector:@selector(teach)]){
            [father performSelector:@selector(teach)];
            NSLog(@"father teaching protocol");
        }
        
        id pers = [[Person alloc] init];
        if([pers respondsToSelector:@selector(teach)]){
            [pers performSelector:@selector(teach)];
            NSLog(@"person teaching protocol");
        }else{
            NSLog(@"person NOT teaching protocol; it had optional teach method!!");
        }
        
        if([pers conformsToProtocol:@protocol(Parent)]){
            // still need to check for @optional methods in the Parent protocol
        }
        
        
        
        Robot *robot = [[Robot alloc] init];
        Teacher *teacher = [[Teacher alloc] init];
        teacher.delegate = robot; // teacher is delegator; robot is delegated
        
        Teacher *teacher2 = [[Teacher alloc] init]; // no delegate; must mark on their own
        
        [teacher createReportCard];
        [teacher2 mark];
        
        Teacher *anotherTeacher = [[Teacher alloc] init];
        anotherTeacher.delegate = teacher2;
        
        [anotherTeacher createReportCard];
        
        
        Student *stu = [[Student alloc] init];
        [stu study];
    }
    return 0;
}
