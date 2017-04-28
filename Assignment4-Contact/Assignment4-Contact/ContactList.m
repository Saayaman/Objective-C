
#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init{

    self = [super init];
    if(self){
        _contactAry = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addContact:(Contact *) contact{
    [_contactAry addObject:contact];
}

- (void)searchName:(NSString*) name{
    
    for (Contact *cont in _contactAry) {
        if ([[cont name] isEqualToString: name]) {
            NSLog(@"This is searchName method: \n%@", [cont description]);
        } else{
            NSLog(@"There are NO matches.");
        }
    }
    
}

- (BOOL)findDuplicate:(NSString*) name{
    
    BOOL matches = false;
    
    for (Contact *cont in _contactAry) {
        if ([[cont name] isEqualToString: name]) {
            matches = true;
        }
    }
    return matches;
}

- (void)listALL{
    
    int count = 0;
    for (Contact *contact in _contactAry) {
        [contact description];
        NSLog(@"%d\n",count);
        count++;
    }

}

@end
