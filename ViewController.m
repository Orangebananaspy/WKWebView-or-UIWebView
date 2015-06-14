#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
- (void)viewDidLoad
{
  [super viewDidLoad];
  
  if([WKWebView class])
  {
    WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc] init];
    theConfiguration.preferences.javaScriptEnabled = YES;
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 30, self.modalRegisterCompanyView.frame.size.width, self.modalRegisterCompanyView.frame.size.height) configuration:theConfiguration];
  }
  else
  {
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 30, self.modalRegisterCompanyView.frame.size.width, self.modalRegisterCompanyView.frame.size.height)];
  }
  
  self.webView.backgroundColor = [UIColor clearColor];
  [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.ca"]]];
  [self.view addSubview:(UIView *)self.webView]; 
}
@end
