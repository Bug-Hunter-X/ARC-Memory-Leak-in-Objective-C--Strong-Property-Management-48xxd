The solution involves setting the `myString` property to `nil` before assigning a new value:

```objectivec
@implementation MyClass
- (void)someMethod {
    self.myString = nil; // Release the previous string
    self.myString = [[NSString alloc] initWithString:@"Hello"];
    // ... some code ...
}
@end
```

Alternatively, you could use a weak property if you don't need to retain the string after this method is finished.  However, in many cases, setting to nil before a new assignment is sufficient and often the better choice for managing the memory lifecycle correctly.