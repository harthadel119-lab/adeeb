#import <UIKit/UIKit.h>
#include "KeyAuth-CPP-Example-main/KeyAuth.hpp"

using namespace KeyAuth;

// بيانات تطبيقك
std::string name = "Harthadel119's Application";
std::string ownerid = "1RtNMdetRI";
std::string secret = "22857edbf268b14033989c153aecf6637c9f6f07f7c670e3735a08c2632feb60";
std::string version = "1.0";

api KeyAuthApp(name, ownerid, secret, version);

// تهيئة الاتصال عند تشغيل اللعبة
%ctor {
    KeyAuthApp.init();
    
    // ملاحظة: يمكنك إضافة KeyAuthApp.check(); هنا للتحقق التلقائي
}

// إضافة العلامة المائية "الذيب VIP"
%hook UIWindow
- (void)layoutSubviews {
    %orig;
    
    // البحث عن العلامة لضمان عدم تكرارها
    if (![self viewWithTag:999]) {
        UILabel *watermark = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 150, 30)];
        watermark.text = @"الذيب VIP";
        watermark.textColor = [UIColor redColor]; // يمكنك تغيير اللون هنا
        watermark.font = [UIFont boldSystemFontOfSize:14];
        watermark.tag = 999;
        watermark.alpha = 0.7; // شفافية لتبدو احترافية
        [self addSubview:watermark];
    }
}
%end
