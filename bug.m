In Objective-C, a common yet subtle error arises when dealing with memory management using ARC (Automatic Reference Counting).  Consider this scenario: 

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    self.myString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
}
@end
```

The issue is that `myString` is a strong property.  If `someMethod` is called multiple times, each time creating a new `NSString`, there will be memory leaks. Every time, the old string is never released because `self.myString` keeps a strong reference. A solution is to set `myString` to `nil` before assigning a new value.  This releases the previous string, preventing the leak.  This can easily be overlooked, leading to gradual memory exhaustion.