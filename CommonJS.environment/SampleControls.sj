@STATIC;1.0;p;15;AppController.jt;48503;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jt;48435;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/AppKit.j", NO);var defaultViewRect;
var dataStructure = {name: "Root", sub: [{name: "Music", sub: ["file1.mp3", {name: "Daft Punk", sub: ["Digital Love", "One More Time", "High Life", "Veridis Quo"]}, "AwesomeSong.mp3", "AnotherAwesomeSong.mp3"]}, {name: "Pictures", sub: ["Picture1.jpg", "Picture2.jpg", "Picture3.jpg", "Picture4.jpg"]}, {name: "Code", sub: [{name: "SampleControls", sub: ["Item two", "Item three", "Item four"]}, {name: "Cappuccino", sub: [{name: "AppKit", sub: ["AppKit.j", {name: "Resources", sub: ["Image.png", "AboutPanel.cib", "Window.png", "Arist.psd"]}, "CPBrowser.j", "CPTableView.j", "CPButton.j"]}, "Foundation.j", "CPTableView.j", "Jakefile"]}, {name: "280Slides", sub: ["SlideController.j", "YouTubeController.j", "logo.png", "Side.j"]}, {name: "Atlas", sub: ["AwesomeController.j", "Icon.png", "Jakefile", "Server.js"]}]}, {name: "System", sub: [{name: "Library", sub: ["SpecialFile", "AnotherFile", "SecretStuff", "Scarry Stuff"]}]}, {name: "Applications", sub: ["XCode.app", "Atlas.app", "Kaleidoscope.app", "Issues.app"]}]};
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("applicationDidFinishLaunching:"), function $AppController__applicationDidFinishLaunching_(self, _cmd, aNotification)
{
    var theWindow = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMakeZero(), CPBorderlessBridgeWindowMask),
        contentView = objj_msgSend(theWindow, "contentView"),
        frame = objj_msgSend(contentView, "frame");
    var tabview = objj_msgSend(objj_msgSend(CPTabView, "alloc"), "initWithFrame:", CGRectMake(15, 15, frame.size.width - 30, frame.size.height - 30));
    objj_msgSend(tabview, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    defaultViewRect = CGRectMake(15, 15, frame.size.width - 60, frame.size.height - 90);
    var items = ["generalControls", "TableView", "OutlineView", "Browser", "WindowsAndAlerts"];
    for (var i = 0, c = objj_msgSend(items, "count"); i < c; i++)
    {
        var tab = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", items[i]);
        objj_msgSend(tab, "setLabel:", items[i]);
        objj_msgSend(tab, "setView:", objj_msgSend(SampleControlTabs, items[i], nil));
        objj_msgSend(tabview, "addTabViewItem:", tab);
    }
    objj_msgSend(contentView, "addSubview:", tabview);
    var mainMenu = objj_msgSend(objj_msgSend(CPApplication, "sharedApplication"), "mainMenu");
    objj_msgSend(mainMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(mainMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    var clickToGithub = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "See the source!", sel_getUid("githubClicked:"), nil);
    objj_msgSend(mainMenu, "addItem:", clickToGithub);
    objj_msgSend(theWindow, "orderFront:", self);
    objj_msgSend(CPMenu, "setMenuBarVisible:", YES);
}
,["void","CPNotification"]), new objj_method(sel_getUid("githubClicked:"), function $AppController__githubClicked_(self, _cmd, sender)
{
    window.open("https://github.com/davidsiaw/cappuccino-demos/blob/master/source/AppController.j");
}
,["void","id"])]);
}{var the_class = objj_allocateClassPair(CPObject, "SampleControlTabs"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("generalHud"), function $SampleControlTabs__generalHud(self, _cmd)
{
    var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 390, 285));
    var scroll = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 390, 285));
    objj_msgSend(scroll, "setDocumentView:", view);
    objj_msgSend(objj_msgSend(scroll, "verticalScroller"), "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(objj_msgSend(scroll, "horizontalScroller"), "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(scroll, "setValue:forThemeAttribute:", objj_msgSend(CPColor, "clearColor"), "bottom-corner-color");
    objj_msgSend(scroll, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(scroll, "setAutohidesScrollers:", YES);
    objj_msgSend(objj_msgSend(scroll, "bottomCornerView"), "setBackgroundColor:", objj_msgSend(CPColor, "clearColor"));
    var label = objj_msgSend(CPTextField, "labelWithTitle:", "Buttons");
    objj_msgSend(label, "setFrameOrigin:", CGPointMake(55, 20));
    objj_msgSend(label, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(view, "addSubview:", label);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 40, 120, 24));
    objj_msgSend(button, "setTitle:", "Standard Button");
    objj_msgSend(button, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 75, 120, 24));
    objj_msgSend(button, "setTitle:", "Round Button");
    objj_msgSend(button, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(button, "setThemeState:", CPButtonStateBezelStyleRounded);
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 110, 120, 24));
    objj_msgSend(button, "setTitle:", "Default Button");
    objj_msgSend(button, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(button, "setKeyEquivalent:", CPCarriageReturnCharacter);
    objj_msgSend(view, "addSubview:", button);
    var label = objj_msgSend(CPTextField, "labelWithTitle:", "Other Controls");
    objj_msgSend(label, "setFrameOrigin:", CGPointMake(175, 20));
    objj_msgSend(label, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(view, "addSubview:", label);
    var control = objj_msgSend(objj_msgSend(CPSegmentedControl, "alloc"), "initWithFrame:", CGRectMake(175, 40, 0, 24));
    objj_msgSend(control, "setSegmentCount:", 3);
    objj_msgSend(control, "setWidth:forSegment:", 50, 0);
    objj_msgSend(control, "setWidth:forSegment:", 50, 1);
    objj_msgSend(control, "setWidth:forSegment:", 50, 2);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 1", 0);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 2", 1);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 3", 2);
    objj_msgSend(control, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(view, "addSubview:", control);
    var control = objj_msgSend(objj_msgSend(CPSegmentedControl, "alloc"), "initWithFrame:", CGRectMake(175, 75, 0, 24));
    objj_msgSend(control, "setSegmentCount:", 3);
    objj_msgSend(control, "setWidth:forSegment:", 50, 0);
    objj_msgSend(control, "setWidth:forSegment:", 50, 1);
    objj_msgSend(control, "setWidth:forSegment:", 50, 2);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 1", 0);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 2", 1);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 3", 2);
    objj_msgSend(control, "setTrackingMode:", CPSegmentSwitchTrackingSelectAny);
    objj_msgSend(control, "setSelected:forSegment:", YES, 0);
    objj_msgSend(control, "setSelected:forSegment:", YES, 2);
    objj_msgSend(control, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(view, "addSubview:", control);
    var control1 = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(175, 100, 150, 24));
    objj_msgSend(control1, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(control, "setFloatValue:", 25.0);
    objj_msgSend(view, "addSubview:", control1);
    var control2 = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(175, 135, 24, 120));
    objj_msgSend(control2, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(view, "addSubview:", control2);
    var control3 = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(215, 150, 32, 32));
    objj_msgSend(control3, "setTheme:", objj_msgSend(CPTheme, "themeNamed:", "Aristo-HUD"));
    objj_msgSend(control3, "setSliderType:", CPCircularSlider);
    objj_msgSend(view, "addSubview:", control3);
    objj_msgSend(control1, "setTarget:", control2);
    objj_msgSend(control1, "setAction:", sel_getUid("takeFloatValueFrom:"));
    objj_msgSend(control2, "setTarget:", control1);
    objj_msgSend(control2, "setAction:", sel_getUid("takeFloatValueFrom:"));
    return scroll;
}
,["CPView"]), new objj_method(sel_getUid("generalControls"), function $SampleControlTabs__generalControls(self, _cmd)
{
    var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", defaultViewRect);
    var label = objj_msgSend(CPTextField, "labelWithTitle:", "Buttons");
    objj_msgSend(label, "setFrameOrigin:", CGPointMake(55, 20));
    objj_msgSend(view, "addSubview:", label);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 40, 120, 24));
    objj_msgSend(button, "setTitle:", "Standard Button");
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 75, 120, 24));
    objj_msgSend(button, "setTitle:", "Round Button");
    objj_msgSend(button, "setThemeState:", CPButtonStateBezelStyleRounded);
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 110, 120, 24));
    objj_msgSend(button, "setTitle:", "Default Button");
    objj_msgSend(button, "setKeyEquivalent:", CPCarriageReturnCharacter);
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(CPCheckBox, "checkBoxWithTitle:", "Checkbox");
    objj_msgSend(button, "setFrameOrigin:", CGPointMake(15, 145));
    objj_msgSend(button, "setAllowsMixedState:", YES);
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(CPRadio, "radioWithTitle:", "Radio");
    objj_msgSend(button, "setFrameOrigin:", CGPointMake(15, 170));
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPPopUpButton, "alloc"), "initWithFrame:pullsDown:", CGRectMake(15, 195, 120, 24), NO);
    objj_msgSend(button, "addItemsWithTitles:", ["Popup Button", "Item 2", "Item 3"]);
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPPopUpButton, "alloc"), "initWithFrame:pullsDown:", CGRectMake(15, 235, 120, 24), YES);
    objj_msgSend(button, "addItemsWithTitles:", ["Pulldown Button", "Item 2", "Item 3"]);
    objj_msgSend(view, "addSubview:", button);
    var control = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 280, 120, 24));
    objj_msgSend(control, "setTitle:", "Disable All");
    objj_msgSend(control, "setTarget:", view);
    objj_msgSend(control, "setAction:", sel_getUid("toggleEnabledSubviews:"));
    objj_msgSend(view, "addSubview:", control);
    var label = objj_msgSend(CPTextField, "labelWithTitle:", "Textfields");
    objj_msgSend(label, "setFrameOrigin:", CGPointMake(220, 20));
    objj_msgSend(view, "addSubview:", label);
    var text = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(190, 40, 120, 28));
    objj_msgSend(text, "setStringValue:", "Standard Text");
    objj_msgSend(text, "setEditable:", YES);
    objj_msgSend(text, "setBezeled:", YES);
    objj_msgSend(view, "addSubview:", text);
    var text = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(190, 75, 120, 28));
    objj_msgSend(text, "setPlaceholderString:", "Placeholder Text");
    objj_msgSend(text, "setEditable:", YES);
    objj_msgSend(text, "setBezeled:", YES);
    objj_msgSend(view, "addSubview:", text);
    var text = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(190, 105, 120, 30));
    objj_msgSend(text, "setPlaceholderString:", "Rounded Text");
    objj_msgSend(text, "setEditable:", YES);
    objj_msgSend(text, "setBezeled:", YES);
    objj_msgSend(text, "setBezelStyle:", CPTextFieldRoundedBezel);
    objj_msgSend(view, "addSubview:", text);
    var text = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(190, 142, 120, 30));
    objj_msgSend(text, "setStringValue:", "Label");
    objj_msgSend(view, "addSubview:", text);
    var text = objj_msgSend(objj_msgSend(CPSearchField, "alloc"), "initWithFrame:", CGRectMake(190, 172, 120, 30));
    objj_msgSend(text, "setStringValue:", "Search Field");
    objj_msgSend(view, "addSubview:", text);
    var label = objj_msgSend(CPTextField, "labelWithTitle:", "Other Controls");
    objj_msgSend(label, "setFrameOrigin:", CGPointMake(380, 20));
    objj_msgSend(view, "addSubview:", label);
    var control = objj_msgSend(objj_msgSend(CPSegmentedControl, "alloc"), "initWithFrame:", CGRectMake(340, 40, 0, 24));
    objj_msgSend(control, "setSegmentCount:", 3);
    objj_msgSend(control, "setWidth:forSegment:", 50, 0);
    objj_msgSend(control, "setWidth:forSegment:", 50, 1);
    objj_msgSend(control, "setWidth:forSegment:", 50, 2);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 1", 0);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 2", 1);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 3", 2);
    objj_msgSend(view, "addSubview:", control);
    var control = objj_msgSend(objj_msgSend(CPSegmentedControl, "alloc"), "initWithFrame:", CGRectMake(340, 75, 0, 24));
    objj_msgSend(control, "setSegmentCount:", 3);
    objj_msgSend(control, "setWidth:forSegment:", 50, 0);
    objj_msgSend(control, "setWidth:forSegment:", 50, 1);
    objj_msgSend(control, "setWidth:forSegment:", 50, 2);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 1", 0);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 2", 1);
    objj_msgSend(control, "setLabel:forSegment:", "Seg 3", 2);
    objj_msgSend(control, "setTrackingMode:", CPSegmentSwitchTrackingSelectAny);
    objj_msgSend(control, "setSelected:forSegment:", YES, 0);
    objj_msgSend(control, "setSelected:forSegment:", YES, 2);
    objj_msgSend(view, "addSubview:", control);
    var control1 = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(340, 100, 150, 24));
    objj_msgSend(control, "setFloatValue:", 25.0);
    objj_msgSend(view, "addSubview:", control1);
    var control2 = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(340, 135, 24, 120));
    objj_msgSend(view, "addSubview:", control2);
    var control3 = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(385, 150, 32, 32));
    objj_msgSend(control3, "setSliderType:", CPCircularSlider);
    objj_msgSend(view, "addSubview:", control3);
    objj_msgSend(control1, "setTarget:", control2);
    objj_msgSend(control1, "setAction:", sel_getUid("takeFloatValueFrom:"));
    objj_msgSend(control2, "setTarget:", control1);
    objj_msgSend(control2, "setAction:", sel_getUid("takeFloatValueFrom:"));
    var progress = objj_msgSend(objj_msgSend(CPProgressIndicator, "alloc"), "initWithFrame:", CGRectMake(340, 265, 120, 15));
    objj_msgSend(view, "addSubview:", progress);
    var callback = function()
    {
        var value = objj_msgSend(progress, "doubleValue");
        if (this.increment && value >= 100)
            this.increment = NO;
        else if (!this.increment && value <= 0)
            this.increment = YES;
        objj_msgSend(progress, "incrementBy:", this.increment ? 1 : -1);
    };
    callback.increment = YES;
    var timer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", .05, callback, YES);
    var control = objj_msgSend(objj_msgSend(CPProgressIndicator, "alloc"), "initWithFrame:", CGRectMake(340, 295, 64, 64));
    objj_msgSend(control, "setStyle:", CPProgressIndicatorSpinningStyle);
    objj_msgSend(view, "addSubview:", control);
    var label = objj_msgSend(CPTextField, "labelWithTitle:", "More Awesome Stuff");
    objj_msgSend(label, "setFrameOrigin:", CGPointMake(535, 20));
    objj_msgSend(view, "addSubview:", label);
    var control = objj_msgSend(objj_msgSend(CPTokenField, "alloc"), "initWithFrame:", CGRectMake(535, 40, 200, 100));
    objj_msgSend(control, "setObjectValue:", ["token", "field"]);
    objj_msgSend(control, "setEditable:", YES);
    objj_msgSend(control, "setDelegate:", objj_msgSend(TokenFieldDelegate, "new"));
    objj_msgSend(control, "setCompletionDelay:", 0);
    objj_msgSend(view, "addSubview:", control);
    var text = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(535, 150, 200, 31));
    objj_msgSend(text, "setBezeled:", YES);
    objj_msgSend(text, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
    objj_msgSend(text, "setStringValue:", "0");
    objj_msgSend(view, "addSubview:", text);
    var control = objj_msgSend(objj_msgSend(CPStepper, "alloc"), "initWithFrame:", CGRectMake(712, 153, 19, 26));
    objj_msgSend(control, "setTarget:", text);
    objj_msgSend(control, "setAction:", sel_getUid("takeIntValueFrom:"));
    objj_msgSend(view, "addSubview:", control);
    return view;
}
,["CPView"]), new objj_method(sel_getUid("TableView"), function $SampleControlTabs__TableView(self, _cmd)
{
    var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", defaultViewRect);
    var scroll = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(15, 25, CGRectGetWidth(defaultViewRect) / 2 - 50, CGRectGetHeight(defaultViewRect)));
    objj_msgSend(scroll, "setBorderType:", CPLineBorder);
    objj_msgSend(view, "addSubview:", scroll);
    var table = objj_msgSend(objj_msgSend(CPTableView, "alloc"), "initWithFrame:", CGRectMakeZero()),
        columnCount = 3;
    var column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "Image"),
        imageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(objj_msgSend(column, "headerView"), "setStringValue:", "Image");
    objj_msgSend(imageView, "setImageScaling:", CPScaleNone);
    objj_msgSend(column, "setDataView:", imageView);
    objj_msgSend(table, "addTableColumn:", column);
    objj_msgSend(table, "setUsesAlternatingRowBackgroundColors:", YES);
    objj_msgSend(table, "registerForDraggedTypes:", ["testType"]);
    while (columnCount--)
    {
        var name = "Column " + ABS(columnCount - 3),
            column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", name);
        objj_msgSend(objj_msgSend(column, "headerView"), "setStringValue:", name);
        objj_msgSend(column, "setEditable:", YES);
        if (columnCount === 2)
            var desc = objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "self", YES);
        else
            var desc = objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "col" + columnCount, YES);
        objj_msgSend(column, "setSortDescriptorPrototype:", desc);
        objj_msgSend(table, "addTableColumn:", column);
    }
    var dataSourceAndDelegate = objj_msgSend(objj_msgSend(TableViewDataSource, "alloc"), "init");
    objj_msgSend(table, "setDataSource:", dataSourceAndDelegate);
    objj_msgSend(table, "setDelegate:", dataSourceAndDelegate);
    objj_msgSend(table, "setAllowsMultipleSelection:", YES);
    objj_msgSend(scroll, "setDocumentView:", table);
    var scroll = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(CGRectGetMaxX(objj_msgSend(scroll, "frame")) + 25, 25, CGRectGetWidth(defaultViewRect) / 2 - 50, CGRectGetHeight(defaultViewRect)));
    objj_msgSend(scroll, "setBorderType:", CPLineBorder);
    objj_msgSend(view, "addSubview:", scroll);
    var table = objj_msgSend(objj_msgSend(CPTableView, "alloc"), "initWithFrame:", CGRectMakeZero()),
        columnCount = 3;
    var column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "Image"),
        imageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(objj_msgSend(column, "headerView"), "setStringValue:", "Image");
    objj_msgSend(imageView, "setImageScaling:", CPScaleNone);
    objj_msgSend(column, "setDataView:", imageView);
    objj_msgSend(table, "addTableColumn:", column);
    while (columnCount--)
    {
        var name = "Column " + ABS(columnCount - 3),
            column = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", name);
        objj_msgSend(objj_msgSend(column, "headerView"), "setStringValue:", name);
        objj_msgSend(table, "addTableColumn:", column);
    }
    objj_msgSend(table, "setDataSource:", objj_msgSend(objj_msgSend(TableViewDataSource, "alloc"), "init"));
    objj_msgSend(table, "setSelectionHighlightStyle:", CPTableViewSelectionHighlightStyleSourceList);
    objj_msgSend(table, "registerForDraggedTypes:", ["testType"]);
    objj_msgSend(scroll, "setDocumentView:", table);
    return view;
}
,["CPView"]), new objj_method(sel_getUid("OutlineView"), function $SampleControlTabs__OutlineView(self, _cmd)
{
    var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", defaultViewRect);
    var scroll = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(15, 20, 600, 400)),
        ov = objj_msgSend(objj_msgSend(CPOutlineView, "alloc"), "initWithFrame:", CGRectMakeZero()),
        col = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "ovcol");
    objj_msgSend(objj_msgSend(col, "headerView"), "setStringValue:", "Outline Column");
    var dataDelegate = objj_msgSend(objj_msgSend(OutlineViewDataSourceDelegate, "alloc"), "init");
    objj_msgSend(dataDelegate, "setOv:", ov);
    objj_msgSend(ov, "setDataSource:", dataDelegate);
    objj_msgSend(ov, "setDelegate:", dataDelegate);
    objj_msgSend(col, "setWidth:", 215);
    objj_msgSend(ov, "addTableColumn:", col);
    var col2 = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "Column 2");
    objj_msgSend(objj_msgSend(col2, "headerView"), "setStringValue:", "Column 2");
    objj_msgSend(ov, "addTableColumn:", col2);
    objj_msgSend(scroll, "setDocumentView:", ov);
    objj_msgSend(view, "addSubview:", scroll);
    objj_msgSend(ov, "registerForDraggedTypes:", ["TestData"]);
    return view;
}
,["CPView"]), new objj_method(sel_getUid("Browser"), function $SampleControlTabs__Browser(self, _cmd)
{
    var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", defaultViewRect);
    var box = objj_msgSend(objj_msgSend(CPBox, "alloc"), "initWithFrame:", CGRectMake(15, 40, 650, 200));
    var browser = objj_msgSend(objj_msgSend(CPBrowser, "alloc"), "initWithFrame:", CGRectMake(1, 1, 648, 198));
    objj_msgSend(browser, "setDelegate:", objj_msgSend(objj_msgSend(BrowserDelegate, "alloc"), "init"));
    objj_msgSend(browser, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(browser, "setMinColumnWidth:", 170);
    objj_msgSend(browser, "setAllowsMultipleSelection:", NO);
    objj_msgSend(box, "addSubview:", browser);
    objj_msgSend(view, "addSubview:", box);
    return view;
}
,["CPView"]), new objj_method(sel_getUid("WindowsAndAlerts"), function $SampleControlTabs__WindowsAndAlerts(self, _cmd)
{
    var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", defaultViewRect);
    var window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMake(100, 100, 400, 400), CPClosableWindowMask | CPResizableWindowMask);
    objj_msgSend(window, "setTitle:", "Sample Window");
    objj_msgSend(window, "setMinSize:", CGSizeMake(100, 100));
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 20, 100, 24));
    objj_msgSend(button, "setTitle:", "CPWindow");
    objj_msgSend(button, "setTarget:", window);
    objj_msgSend(button, "setAction:", sel_getUid("orderFront:"));
    objj_msgSend(view, "addSubview:", button);
    var platformWindow = objj_msgSend(objj_msgSend(CPPlatformWindow, "alloc"), "initWithContentRect:", CGRectMake(100, 100, 775, 400)),
        window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMake(100, 100, 775, 400), CPClosableWindowMask | CPResizableWindowMask);
    objj_msgSend(window, "setTitle:", "Sample Window");
    objj_msgSend(window, "setMinSize:", CGSizeMake(100, 100));
    objj_msgSend(window, "setFullBridge:", YES);
    objj_msgSend(window, "setPlatformWindow:", platformWindow);
    objj_msgSend(window, "setContentView:", objj_msgSend(self, "generalControls"));
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(130, 20, 100, 24));
    objj_msgSend(button, "setTitle:", "CPPlatformWindow");
    objj_msgSend(button, "setTarget:", window);
    objj_msgSend(button, "setAction:", sel_getUid("orderFront:"));
    objj_msgSend(view, "addSubview:", button);
    var alrt = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alrt, "setTitle:", "Informational Alert");
    objj_msgSend(alrt, "setMessageText:", "Informational Alert");
    objj_msgSend(alrt, "setInformativeText:", "This CPAlert is used to display information modally. It can have a help button and an accessory view, and a supression button.");
    objj_msgSend(alrt, "setShowsHelp:", YES);
    objj_msgSend(alrt, "setShowsSuppressionButton:", YES);
    objj_msgSend(alrt, "setAlertStyle:", CPInformationalAlertStyle);
    objj_msgSend(alrt, "addButtonWithTitle:", "Okay");
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(245, 20, 100, 24));
    objj_msgSend(button, "setTitle:", "Info CPAlert");
    objj_msgSend(button, "setTarget:", alrt);
    objj_msgSend(button, "setAction:", sel_getUid("runModal"));
    objj_msgSend(view, "addSubview:", button);
    var alrt = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alrt, "setTitle:", "Warning Alert");
    objj_msgSend(alrt, "setMessageText:", "Warning Alert");
    objj_msgSend(alrt, "setInformativeText:", "This CPAlert is used to display warnings modally. It can have a help button and an accessory view, and a supression button.");
    objj_msgSend(alrt, "setShowsHelp:", YES);
    objj_msgSend(alrt, "setShowsSuppressionButton:", YES);
    objj_msgSend(alrt, "setAlertStyle:", CPWarningAlertStyle);
    objj_msgSend(alrt, "addButtonWithTitle:", "Okay");
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(370, 20, 100, 24));
    objj_msgSend(button, "setTitle:", "Warn CPAlert");
    objj_msgSend(button, "setTarget:", alrt);
    objj_msgSend(button, "setAction:", sel_getUid("runModal"));
    objj_msgSend(view, "addSubview:", button);
    var alrt = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alrt, "setTitle:", "Error Alert");
    objj_msgSend(alrt, "setMessageText:", "Error Alert");
    objj_msgSend(alrt, "setInformativeText:", "This CPAlert is used to display errors modally. It can have a help button and an accessory view, and a supression button.");
    objj_msgSend(alrt, "setShowsHelp:", YES);
    objj_msgSend(alrt, "setShowsSuppressionButton:", YES);
    objj_msgSend(alrt, "setAlertStyle:", CPCriticalAlertStyle);
    objj_msgSend(alrt, "addButtonWithTitle:", "Okay");
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(495, 20, 100, 24));
    objj_msgSend(button, "setTitle:", "Error CPAlert");
    objj_msgSend(button, "setTarget:", alrt);
    objj_msgSend(button, "setAction:", sel_getUid("runModal"));
    objj_msgSend(view, "addSubview:", button);
    var alrt = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alrt, "setTitle:", "Informational Alert");
    objj_msgSend(alrt, "setMessageText:", "Informational Alert");
    objj_msgSend(alrt, "setInformativeText:", "CPAlerts can also be used as sheets! With the same options as before.");
    objj_msgSend(alrt, "setShowsHelp:", YES);
    objj_msgSend(alrt, "setShowsSuppressionButton:", YES);
    objj_msgSend(alrt, "setAlertStyle:", CPInformationalAlertStyle);
    objj_msgSend(alrt, "addButtonWithTitle:", "Okay");
    var controller = objj_msgSend(objj_msgSend(SheetController, "alloc"), "init");
    objj_msgSend(controller, "setSheet:", alrt);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(15, 59, 100, 24));
    objj_msgSend(button, "setTitle:", "Attached Sheet");
    objj_msgSend(button, "setTarget:", controller);
    objj_msgSend(button, "setAction:", sel_getUid("beginSheet:"));
    objj_msgSend(view, "addSubview:", button);
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(130, 59, 100, 24));
    objj_msgSend(button, "setTitle:", "Color Panel");
    objj_msgSend(view, "addSubview:", button);
    var picker = objj_msgSend(CPColorPanel, "sharedColorPanel");
    objj_msgSend(button, "setTarget:", picker);
    objj_msgSend(button, "setAction:", sel_getUid("orderFront:"));
    var window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMake(100, 100, 390, 285), CPClosableWindowMask | CPResizableWindowMask | CPHUDBackgroundWindowMask);
    objj_msgSend(window, "setTitle:", "HUD Window and Controls");
    objj_msgSend(window, "setMinSize:", CGSizeMake(200, 75));
    objj_msgSend(objj_msgSend(window, "contentView"), "addSubview:", objj_msgSend(self, "generalHud"));
    var button = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(245, 59, 100, 24));
    objj_msgSend(button, "setTitle:", "HUD");
    objj_msgSend(button, "setTarget:", window);
    objj_msgSend(button, "setAction:", sel_getUid("orderFront:"));
    objj_msgSend(view, "addSubview:", button);
    return view;
}
,["CPView"])]);
}{var the_class = objj_allocateClassPair(CPObject, "TableViewDataSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("data")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $TableViewDataSource__init(self, _cmd)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TableViewDataSource").super_class }, "init");
    self.data = [];
    var c = 500;
    while (c--)
        objj_msgSend(self.data, "addObject:", c);
    return self;
}
,["id"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $TableViewDataSource__numberOfRowsInTableView_(self, _cmd, aTable)
{
    return objj_msgSend(self.data, "count");
}
,["int","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $TableViewDataSource__tableView_objectValueForTableColumn_row_(self, _cmd, aTable, aCol, aRow)
{
    if (objj_msgSend(aCol, "identifier") === "Image")
        return objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", "http://cappuccino.org/images/favicon.png", CGSizeMake(16, 16));
    else if (objj_msgSend(aCol, "identifier") === "Column 1")
        return "Row " + self.data[aRow];
    else
        return objj_msgSend(aCol, "identifier");
}
,["id","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:isGroupRow:"), function $TableViewDataSource__tableView_isGroupRow_(self, _cmd, aTable, aRow)
{
    return self.data[aRow] % 10 === 0;
}
,["BOOL","CPTableView","int"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $TableViewDataSource__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableView, rowIndexes, pboard)
{
    objj_msgSend(pboard, "declareTypes:owner:", objj_msgSend(CPArray, "arrayWithObject:", "testType"), self);
    return YES;
}
,["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $TableViewDataSource__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{
    return CPDragOperationMove;
}
,["CPDragOperation","CPTableView","id","CPInteger","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $TableViewDataSource__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, info, row, operation)
{
    var alrt = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alrt, "setTitle:", "Cool Features");
    objj_msgSend(alrt, "setMessageText:", "No reordering implemented");
    objj_msgSend(alrt, "setInformativeText:", "Since this is just a demo we haven't actually implement the drop behavior here.");
    objj_msgSend(alrt, "setAlertStyle:", CPInformationalAlertStyle);
    objj_msgSend(alrt, "addButtonWithTitle:", "Okay");
    objj_msgSend(alrt, "runModal");
    return NO;
}
,["BOOL","CPTableView","id","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"), function $TableViewDataSource__tableView_setObjectValue_forTableColumn_row_(self, _cmd, aTableView, aValue, tableColumn, row)
{
    self.data[row] = aValue;
}
,["void","CPTableView","id","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TableViewDataSource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    var newDescriptors = objj_msgSend(aTableView, "sortDescriptors");
    objj_msgSend(self.data, "sortUsingDescriptors:", newDescriptors);
    objj_msgSend(aTableView, "reloadData");
}
,["void","CPTableView","CPArray"])]);
}{var the_class = objj_allocateClassPair(CPObject, "TokenFieldDelegate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("states")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $TokenFieldDelegate__init(self, _cmd)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TokenFieldDelegate").super_class }, "init");
    self.states = ["Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Guam", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Northern Marianas Islands", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Virgin Islands", "Washington", "West Virginia", "Wisconsin", "Wyoming"];
    return self;
}
,["id"]), new objj_method(sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"), function $TokenFieldDelegate__tokenField_completionsForSubstring_indexOfToken_indexOfSelectedItem_(self, _cmd, aTokenField, aString, anIndex, selectedIndex)
{
    if (aString)
    {
        var matches = [],
            search = objj_msgSend(aString, "lowercaseString");
        for (var i = 0, c = self.states.length; i < c; i++)
        {
            var state = objj_msgSend(self.states[i], "lowercaseString");
            if (objj_msgSend(state, "hasPrefix:", search))
                objj_msgSend(matches, "addObject:", self.states[i]);
        }
        return matches;
    }
    else
        return [];
}
,["CPArray","CPTokenField","CPString","int","int"])]);
}{var the_class = objj_allocateClassPair(CPObject, "BrowserDelegate"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("rootItemForBrowser:"), function $BrowserDelegate__rootItemForBrowser_(self, _cmd, browser)
{
    return dataStructure;
}
,["id","CPBrowser"]), new objj_method(sel_getUid("browser:numberOfChildrenOfItem:"), function $BrowserDelegate__browser_numberOfChildrenOfItem_(self, _cmd, browser, item)
{
    return item.sub.length;
}
,["int","CPBrowser","id"]), new objj_method(sel_getUid("browser:child:ofItem:"), function $BrowserDelegate__browser_child_ofItem_(self, _cmd, browser, index, item)
{
    return objj_msgSend(item.sub, "objectAtIndex:", index);
}
,["id","CPBrowser","int","id"]), new objj_method(sel_getUid("browser:isLeafItem:"), function $BrowserDelegate__browser_isLeafItem_(self, _cmd, browser, item)
{
    return item.sub.length === 0;
}
,["BOOL","CPBrowser","id"]), new objj_method(sel_getUid("browser:objectValueForItem:"), function $BrowserDelegate__browser_objectValueForItem_(self, _cmd, browser, item)
{
    return item.name || item;
}
,["id","CPBrowser","id"])]);
}{var the_class = objj_allocateClassPair(CPObject, "OutlineViewDataSourceDelegate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("rootItem"), new objj_ivar("ov")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("ov"), function $OutlineViewDataSourceDelegate__ov(self, _cmd)
{
    return self.ov;
}
,["CPOutlineView"]), new objj_method(sel_getUid("setOv:"), function $OutlineViewDataSourceDelegate__setOv_(self, _cmd, newValue)
{
    self.ov = newValue;
}
,["void","CPOutlineView"]), new objj_method(sel_getUid("init"), function $OutlineViewDataSourceDelegate__init(self, _cmd)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("OutlineViewDataSourceDelegate").super_class }, "init");
    var path = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "InitInfo.dict"),
        request = objj_msgSend(CPURLRequest, "requestWithURL:", path),
        connection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    return self;
}
,["id"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $OutlineViewDataSourceDelegate__connection_didReceiveData_(self, _cmd, connection, dataString)
{
    if (!dataString)
        return;
    var data = objj_msgSend(objj_msgSend(CPData, "alloc"), "initWithRawString:", dataString);
    self.rootItem = objj_msgSend(CPPropertyListSerialization, "propertyListFromData:format:", data, CPPropertyListXMLFormat_v1_0);
    objj_msgSend(self.ov, "reloadData");
}
,["void","CPURLConnection","CPString"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $OutlineViewDataSourceDelegate__outlineView_numberOfChildrenOfItem_(self, _cmd, theOutlineView, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    if (objj_msgSend(theItem, "isKindOfClass:", objj_msgSend(CPString, "class")))
        return 0;
    return objj_msgSend(objj_msgSend(theItem, "objectForKey:", "Children"), "count");
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $OutlineViewDataSourceDelegate__outlineView_child_ofItem_(self, _cmd, theOutlineView, theIndex, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    return objj_msgSend(objj_msgSend(theItem, "objectForKey:", "Children"), "objectAtIndex:", theIndex);
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $OutlineViewDataSourceDelegate__outlineView_isItemExpandable_(self, _cmd, theOutlineView, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    return !objj_msgSend(theItem, "isKindOfClass:", objj_msgSend(CPString, "class"));
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $OutlineViewDataSourceDelegate__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, theColumn, theItem)
{
    if (objj_msgSend(theItem, "isKindOfClass:", objj_msgSend(CPString, "class")))
        return theItem;
    return objj_msgSend(theItem, "objectForKey:", "Name");
}
,["id","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("outlineView:writeItems:toPasteboard:"), function $OutlineViewDataSourceDelegate__outlineView_writeItems_toPasteboard_(self, _cmd, anOutlineView, theItems, thePasteBoard)
{
    objj_msgSend(thePasteBoard, "declareTypes:owner:", ["TestData"], self);
    objj_msgSend(thePasteBoard, "setData:forType:", objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", theItems), "testData");
    return YES;
}
,["BOOL","CPOutlineView","CPArray","CPPasteBoard"]), new objj_method(sel_getUid("outlineView:validateDrop:proposedItem:proposedChildIndex:"), function $OutlineViewDataSourceDelegate__outlineView_validateDrop_proposedItem_proposedChildIndex_(self, _cmd, anOutlineView, theInfo, theItem, theIndex)
{
    if (theItem === nil)
        objj_msgSend(anOutlineView, "setDropItem:dropChildIndex:", nil, theIndex);
    objj_msgSend(anOutlineView, "setDropItem:dropChildIndex:", theItem, theIndex);
    return CPDragOperationEvery;
}
,["CPDragOperation","CPOutlineView","id","id","int"]), new objj_method(sel_getUid("outlineView:acceptDrop:item:childIndex:"), function $OutlineViewDataSourceDelegate__outlineView_acceptDrop_item_childIndex_(self, _cmd, outlineView, theInfo, theItem, theIndex)
{
    var alrt = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alrt, "setTitle:", "Cool Features");
    objj_msgSend(alrt, "setMessageText:", "No reordering implemented");
    objj_msgSend(alrt, "setInformativeText:", "Since this is just a demo we haven't actually implement the drop behavior here.");
    objj_msgSend(alrt, "setAlertStyle:", CPInformationalAlertStyle);
    objj_msgSend(alrt, "addButtonWithTitle:", "Okay");
    objj_msgSend(alrt, "runModal");
    return NO;
}
,["BOOL","CPOutlineView","id","id","int"])]);
}{var the_class = objj_allocateClassPair(CPObject, "SimpleNodeData"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("name"), new objj_ivar("image"), new objj_ivar("container"), new objj_ivar("expandable"), new objj_ivar("selectable")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $SimpleNodeData__name(self, _cmd)
{
    return self.name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $SimpleNodeData__setName_(self, _cmd, newValue)
{
    self.name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("image"), function $SimpleNodeData__image(self, _cmd)
{
    return self.image;
}
,["CPImage"]), new objj_method(sel_getUid("setImage:"), function $SimpleNodeData__setImage_(self, _cmd, newValue)
{
    self.image = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("container"), function $SimpleNodeData__container(self, _cmd)
{
    return self.container;
}
,["BOOL"]), new objj_method(sel_getUid("setContainer:"), function $SimpleNodeData__setContainer_(self, _cmd, newValue)
{
    self.container = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("expandable"), function $SimpleNodeData__expandable(self, _cmd)
{
    return self.expandable;
}
,["BOOL"]), new objj_method(sel_getUid("setExpandable:"), function $SimpleNodeData__setExpandable_(self, _cmd, newValue)
{
    self.expandable = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("selectable"), function $SimpleNodeData__selectable(self, _cmd)
{
    return self.selectable;
}
,["BOOL"]), new objj_method(sel_getUid("setSelectable:"), function $SimpleNodeData__setSelectable_(self, _cmd, newValue)
{
    self.selectable = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("init"), function $SimpleNodeData__init(self, _cmd)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("SimpleNodeData").super_class }, "init");
    self.name = "Untitled";
    self.expandable = YES;
    self.selectable = YES;
    self.container = YES;
    return self;
}
,["id"]), new objj_method(sel_getUid("initWithName:"), function $SimpleNodeData__initWithName_(self, _cmd, aName)
{
    self = objj_msgSend(self, "init");
    self.name = aName;
    return self;
}
,["id","CPString"]), new objj_method(sel_getUid("compare:"), function $SimpleNodeData__compare_(self, _cmd, anOther)
{
    if (objj_msgSend(anOther, "isKindOfClass:", objj_msgSend(SimpleNodeData, "class")))
        return objj_msgSend(self.name, "compare:", objj_msgSend(anOther, "name"));
    return CPOrderedAscending;
}
,["CPComparisonResult","id"]), new objj_method(sel_getUid("description"), function $SimpleNodeData__description(self, _cmd)
{
    return objj_msgSend(CPString, "stringWithFormat:", "%@ - '%@' expandable: %d, selectable: %d, container: %d", objj_msgSendSuper({ receiver:self, super_class:objj_getClass("SimpleNodeData").super_class }, "description"), self.name, self.expandable, self.selectable, self.container);
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("nodeDataWithName:"), function $SimpleNodeData__nodeDataWithName_(self, _cmd, aName)
{
    return objj_msgSend(objj_msgSend(SimpleNodeData, "alloc"), "initWithName:", aName);
}
,["SimpleNodeData","CPString"])]);
}{var the_class = objj_allocateClassPair(CPObject, "SheetController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("sheet")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("sheet"), function $SheetController__sheet(self, _cmd)
{
    return self.sheet;
}
,["CPAlert"]), new objj_method(sel_getUid("setSheet:"), function $SheetController__setSheet_(self, _cmd, newValue)
{
    self.sheet = newValue;
}
,["void","CPAlert"]), new objj_method(sel_getUid("beginSheet:"), function $SheetController__beginSheet_(self, _cmd, sender)
{
    objj_msgSend(self.sheet, "beginSheetModalForWindow:", objj_msgSend(CPApp, "mainWindow"));
}
,["void","id"]), new objj_method(sel_getUid("didEndSheet:returnCode:contextInfo:"), function $SheetController__didEndSheet_returnCode_contextInfo_(self, _cmd, aSheet, returnCode, contextInfo)
{
}
,["void","CPWindow","int","id"])]);
}{
var the_class = objj_getClass("CPView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("toggleEnabledSubviews:"), function $CPView__toggleEnabledSubviews_(self, _cmd, sender)
{
    var subviews = objj_msgSend(self, "subviews"),
        c = objj_msgSend(subviews, "count");
    while (c--)
    {
        var view = subviews[c];
        if (view === sender)
        {
            objj_msgSend(view, "setTitle:", objj_msgSend(view, "title") === "Disable All" ? "Enable All" : "Disable All");
            continue;
        }
        if (objj_msgSend(view, "respondsToSelector:", sel_getUid("setEnabled:")))
            objj_msgSend(view, "setEnabled:", !objj_msgSend(view, "isEnabled"));
    }
}
,["void","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultMenu"), function $CPView__defaultMenu(self, _cmd)
{
    var menu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        words = objj_msgSend("Views/Can have/Contextual menus/If you/Want", "pathComponents");
    for (var i = 0, c = objj_msgSend(words, "count"); i < c; i++)
    {
        if (words[i] === "Contextual menus")
        {
            var item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", words[i], nil, nil),
                sub = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
            objj_msgSend(sub, "addItemWithTitle:action:keyEquivalent:", "And They", nil, nil);
            objj_msgSend(sub, "addItemWithTitle:action:keyEquivalent:", "Can Have", nil, nil);
            objj_msgSend(sub, "addItemWithTitle:action:keyEquivalent:", "Sub Menus", nil, nil);
            objj_msgSend(item, "setSubmenu:", sub);
            objj_msgSend(menu, "addItem:", item);
        }
        else
            objj_msgSend(menu, "addItemWithTitle:action:keyEquivalent:", words[i], nil, nil);
    }
    return menu;
}
,["CPMenu"])]);
}p;6;main.jt;292;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;206;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/AppKit.j", NO);objj_executeFile("AppController.j", YES);main = function(args, namedArgs)
{
    CPApplicationMain(args, namedArgs);
}
e;