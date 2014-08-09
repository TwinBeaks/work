#import <Foundation/Foundation.h>


@interface CPPhoto : NSObject {
    NSString* subject;
    NSString* caption;
    NSString* photographer;
}

@property (retain) NSString* subject;

- (NSString*) caption;
- (NSString*) photographer;

- (void) setCaption: (NSString*)input;
- (void) setPhotographer: (NSString*)input;


@end