/*
 AutoLayout 基础知识
    在适应各种尺寸的设备的时候的时候，会用AutoLayout
 Autoresizing与AutoLayout的区别
    Autoresizing是苹果早期的ui布局适配的解决办法。因为iPhone但是只有3.5寸的屏幕，在加上手机app很少支持横屏，所以iOS开发者基本不用怎么适配布局，所有的ui控件只要相对父控件布局就可以了。注意：它只能相对父控件布局
        例如：保证两个等宽等高的View之间的间距永远固定，这时候用Autoresizing是不够的，因为这两个View之间的布局关系是用两个View之间的关系，而不是相对于父控件之间的关系。所以这个时候只能使用AutoLayout才能实现。
    AutoLayout就可以在任意两个控件中建立布局关系（不一定非得是父子View）。
 */
