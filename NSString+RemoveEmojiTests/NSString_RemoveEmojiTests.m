#import <XCTest/XCTest.h>

#import "NSString+RemoveEmoji.h"

@interface NSString_RemoveEmojiTests : XCTestCase

@end

@implementation NSString_RemoveEmojiTests

- (void)testHasEmoji {
    XCTAssertFalse([@"Party Hard" isIncludingEmoji]);
    XCTAssert([@"✨" isIncludingEmoji]);
    XCTAssert([@"✨Party✨ ✨Hard✨" isIncludingEmoji]);
}

- (void)testRemovedEmojiString {
    XCTAssert([[@"Party Hard" stringByRemovingEmoji] isEqualToString:@"Party Hard"]);
    XCTAssert([[@"✨" stringByRemovingEmoji] isEqualToString:@""]);
    XCTAssert([[@"✨Party✨ ✨Hard✨" stringByRemovingEmoji] isEqualToString:@"Party Hard"]);
}

@end
