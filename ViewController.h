#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

//Just a little hacky way so the compiler doesn't complain but add any other funcitons you will be using with WKWebview or UIWebView
@interface NSObject()
- (id)loadRequest:(NSURLRequest *)request;
@property UIColor *backgroundColor;
@end

@interface ViewController : UIViewController
@property (strong, nonatomic) NSObject *webView;
@end
