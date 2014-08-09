#import "CPPhoto.h"


@implementation CPPhoto

- (id) init {
    NSLog(@"init");
    if (self = [super init]) {
        [self setSubject:@"Subject"];
        [self setCaption:@"Caption!!!"];
        [self setPhotographer:@"Christopher"];
    }
    return self;
}

@synthesize subject;


- (NSString*) caption {
    return caption;
}

- (NSString*) photographer {
    return photographer;
}

- (void) setCaption: (NSString*)input {
    caption = input;
}

- (void) setPhotographer:(NSString*)input {
    photographer = input;
}

- (void) dealloc
{
    NSLog(@"dealloc");
}
    
@end