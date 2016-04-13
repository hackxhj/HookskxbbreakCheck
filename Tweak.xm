#import <UIKit/UIKit.h>
%hook AngelFaceViewController
- (void)viewDidLoad
{
	%orig; 
}

- (_Bool)myTest
{
	return false;
}
%end

%hook SSJailbreakCheck

+ (int)jailbroken
{
 UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"title" message:@"解决越狱手机不能安装问题" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
     [alert release];
	return 123;
}

%end