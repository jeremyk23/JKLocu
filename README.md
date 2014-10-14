JKLocu
======

iOS Driver For Locu Venue Search API

I used the [BZFoursquare iOS driver](https://github.com/baztokyo/foursquare-ios-api "Foursquare iOS driver") as a skeleton for this driver.

To use, initialize with your api key:

`self.locu = [[JKLocu alloc] initWithApiKey:kLocuApiKey];`

Here is an example use to fetch a restaurant's menu with a given Locu venue id:

```
- (void)requestLocuMenuWithVenueID:(NSString *)venueID {
        JKLocuRequest *lcRequest;
        NSString *path = venueID;
        lcRequest = [self.locu requestWithPath:path HTTPMethod:@"GET" parameters:nil delegate:self];
        [lcRequest start];
}
```

Now implement the delegate methods to get the data.
```
- (void)jkRequestDidFinishLoading:(JKLocuRequest *)request {
    // Do awesome stuff with your data here.
}

- (void)jkRequest:(JKLocuRequest *)request didFailWithError:(NSError *)error {
    // Deal with not so awesome error here.
}
```
