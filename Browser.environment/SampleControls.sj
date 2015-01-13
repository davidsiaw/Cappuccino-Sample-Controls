@STATIC;1.0;p;15;AppController.jt;68001;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.jt;67933;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/AppKit.j", NO);var defaultViewRect;
var dataStructure = {name: "Root", sub: [{name: "Music", sub: ["file1.mp3", {name: "Daft Punk", sub: ["Digital Love", "One More Time", "High Life", "Veridis Quo"]}, "AwesomeSong.mp3", "AnotherAwesomeSong.mp3"]}, {name: "Pictures", sub: ["Picture1.jpg", "Picture2.jpg", "Picture3.jpg", "Picture4.jpg"]}, {name: "Code", sub: [{name: "SampleControls", sub: ["Item two", "Item three", "Item four"]}, {name: "Cappuccino", sub: [{name: "AppKit", sub: ["AppKit.j", {name: "Resources", sub: ["Image.png", "AboutPanel.cib", "Window.png", "Arist.psd"]}, "CPBrowser.j", "CPTableView.j", "CPButton.j"]}, "Foundation.j", "CPTableView.j", "Jakefile"]}, {name: "280Slides", sub: ["SlideController.j", "YouTubeController.j", "logo.png", "Side.j"]}, {name: "Atlas", sub: ["AwesomeController.j", "Icon.png", "Jakefile", "Server.js"]}]}, {name: "System", sub: [{name: "Library", sub: ["SpecialFile", "AnotherFile", "SecretStuff", "Scarry Stuff"]}]}, {name: "Applications", sub: ["XCode.app", "Atlas.app", "Kaleidoscope.app", "Issues.app"]}]};
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("applicationDidFinishLaunching:"), function $AppController__applicationDidFinishLaunching_(self, _cmd, aNotification)
{
    var theWindow = ((___r1 = CPWindow.isa.objj_msgSend0(CPWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentRect:styleMask:", CGRectMakeZero(), CPBorderlessBridgeWindowMask)),
        contentView = (theWindow == null ? null : theWindow.isa.objj_msgSend0(theWindow, "contentView")),
        frame = (contentView == null ? null : contentView.isa.objj_msgSend0(contentView, "frame"));
    var tabview = ((___r1 = CPTabView.isa.objj_msgSend0(CPTabView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 15, frame.size.width - 30, frame.size.height - 30)));
    (tabview == null ? null : tabview.isa.objj_msgSend1(tabview, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable));
    defaultViewRect = CGRectMake(15, 15, frame.size.width - 60, frame.size.height - 90);
    var items = ["generalControls", "TableView", "OutlineView", "Browser", "WindowsAndAlerts"];
    for (var i = 0, c = (items == null ? null : items.isa.objj_msgSend0(items, "count")); i < c; i++)
    {
        var tab = ((___r1 = CPTabViewItem.isa.objj_msgSend0(CPTabViewItem, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", items[i]));
        (tab == null ? null : tab.isa.objj_msgSend1(tab, "setLabel:", items[i]));
        (tab == null ? null : tab.isa.objj_msgSend1(tab, "setView:", objj_msgSend(SampleControlTabs, items[i], nil)));
        (tabview == null ? null : tabview.isa.objj_msgSend1(tabview, "addTabViewItem:", tab));
    }
    (contentView == null ? null : contentView.isa.objj_msgSend1(contentView, "addSubview:", tabview));
    (theWindow == null ? null : theWindow.isa.objj_msgSend1(theWindow, "orderFront:", self));
    CPMenu.isa.objj_msgSend1(CPMenu, "setMenuBarVisible:", YES);
    var ___r1;
}
,["void","CPNotification"])]);
}{var the_class = objj_allocateClassPair(CPObject, "SampleControlTabs"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(meta_class, [new objj_method(sel_getUid("generalHud"), function $SampleControlTabs__generalHud(self, _cmd)
{
    var view = ((___r1 = CPView.isa.objj_msgSend0(CPView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(0, 0, 390, 285)));
    var scroll = ((___r1 = CPScrollView.isa.objj_msgSend0(CPScrollView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(0, 0, 390, 285)));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setDocumentView:", view));
    ((___r1 = (scroll == null ? null : scroll.isa.objj_msgSend0(scroll, "verticalScroller"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    ((___r1 = (scroll == null ? null : scroll.isa.objj_msgSend0(scroll, "horizontalScroller"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (scroll == null ? null : scroll.isa.objj_msgSend2(scroll, "setValue:forThemeAttribute:", CPColor.isa.objj_msgSend0(CPColor, "clearColor"), "bottom-corner-color"));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setAutohidesScrollers:", YES));
    ((___r1 = (scroll == null ? null : scroll.isa.objj_msgSend0(scroll, "bottomCornerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setBackgroundColor:", CPColor.isa.objj_msgSend0(CPColor, "clearColor")));
    var label = CPTextField.isa.objj_msgSend1(CPTextField, "labelWithTitle:", "Buttons");
    (label == null ? null : label.isa.objj_msgSend1(label, "setFrameOrigin:", CGPointMake(55, 20)));
    (label == null ? null : label.isa.objj_msgSend1(label, "setTextColor:", CPColor.isa.objj_msgSend0(CPColor, "whiteColor")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", label));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 40, 120, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Standard Button"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 75, 120, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Round Button"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (button == null ? null : button.isa.objj_msgSend1(button, "setThemeState:", CPButtonStateBezelStyleRounded));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 110, 120, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Default Button"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (button == null ? null : button.isa.objj_msgSend1(button, "setKeyEquivalent:", CPCarriageReturnCharacter));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var label = CPTextField.isa.objj_msgSend1(CPTextField, "labelWithTitle:", "Other Controls");
    (label == null ? null : label.isa.objj_msgSend1(label, "setFrameOrigin:", CGPointMake(175, 20)));
    (label == null ? null : label.isa.objj_msgSend1(label, "setTextColor:", CPColor.isa.objj_msgSend0(CPColor, "whiteColor")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", label));
    var control = ((___r1 = CPSegmentedControl.isa.objj_msgSend0(CPSegmentedControl, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(175, 40, 0, 24)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setSegmentCount:", 3));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 2));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 1", 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 2", 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 3", 2));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var control = ((___r1 = CPSegmentedControl.isa.objj_msgSend0(CPSegmentedControl, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(175, 75, 0, 24)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setSegmentCount:", 3));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 2));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 1", 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 2", 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 3", 2));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTrackingMode:", CPSegmentSwitchTrackingSelectAny));
    (control == null ? null : control.isa.objj_msgSend2(control, "setSelected:forSegment:", YES, 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setSelected:forSegment:", YES, 2));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var control1 = ((___r1 = CPSlider.isa.objj_msgSend0(CPSlider, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(175, 100, 150, 24)));
    (control1 == null ? null : control1.isa.objj_msgSend1(control1, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (control == null ? null : control.isa.objj_msgSend1(control, "setFloatValue:", 25.0));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control1));
    var control2 = ((___r1 = CPSlider.isa.objj_msgSend0(CPSlider, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(175, 135, 24, 120)));
    (control2 == null ? null : control2.isa.objj_msgSend1(control2, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control2));
    var control3 = ((___r1 = CPSlider.isa.objj_msgSend0(CPSlider, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(215, 150, 32, 32)));
    (control3 == null ? null : control3.isa.objj_msgSend1(control3, "setTheme:", CPTheme.isa.objj_msgSend1(CPTheme, "themeNamed:", "Aristo-HUD")));
    (control3 == null ? null : control3.isa.objj_msgSend1(control3, "setSliderType:", CPCircularSlider));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control3));
    (control1 == null ? null : control1.isa.objj_msgSend1(control1, "setTarget:", control2));
    (control1 == null ? null : control1.isa.objj_msgSend1(control1, "setAction:", sel_getUid("takeFloatValueFrom:")));
    (control2 == null ? null : control2.isa.objj_msgSend1(control2, "setTarget:", control1));
    (control2 == null ? null : control2.isa.objj_msgSend1(control2, "setAction:", sel_getUid("takeFloatValueFrom:")));
    return scroll;
    var ___r1;
}
,["CPView"]), new objj_method(sel_getUid("generalControls"), function $SampleControlTabs__generalControls(self, _cmd)
{
    var view = ((___r1 = CPView.isa.objj_msgSend0(CPView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", defaultViewRect));
    var label = CPTextField.isa.objj_msgSend1(CPTextField, "labelWithTitle:", "Buttons");
    (label == null ? null : label.isa.objj_msgSend1(label, "setFrameOrigin:", CGPointMake(55, 20)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", label));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 40, 120, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Standard Button"));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 75, 120, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Round Button"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setThemeState:", CPButtonStateBezelStyleRounded));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 110, 120, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Default Button"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setKeyEquivalent:", CPCarriageReturnCharacter));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = CPCheckBox.isa.objj_msgSend1(CPCheckBox, "checkBoxWithTitle:", "Checkbox");
    (button == null ? null : button.isa.objj_msgSend1(button, "setFrameOrigin:", CGPointMake(15, 145)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAllowsMixedState:", YES));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = CPRadio.isa.objj_msgSend1(CPRadio, "radioWithTitle:", "Radio");
    (button == null ? null : button.isa.objj_msgSend1(button, "setFrameOrigin:", CGPointMake(15, 170)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPPopUpButton.isa.objj_msgSend0(CPPopUpButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithFrame:pullsDown:", CGRectMake(15, 195, 120, 24), NO));
    (button == null ? null : button.isa.objj_msgSend1(button, "addItemsWithTitles:", ["Popup Button", "Item 2", "Item 3"]));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPPopUpButton.isa.objj_msgSend0(CPPopUpButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithFrame:pullsDown:", CGRectMake(15, 235, 120, 24), YES));
    (button == null ? null : button.isa.objj_msgSend1(button, "addItemsWithTitles:", ["Pulldown Button", "Item 2", "Item 3"]));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var control = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 280, 120, 24)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTitle:", "Disable All"));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTarget:", view));
    (control == null ? null : control.isa.objj_msgSend1(control, "setAction:", sel_getUid("toggleEnabledSubviews:")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var label = CPTextField.isa.objj_msgSend1(CPTextField, "labelWithTitle:", "Textfields");
    (label == null ? null : label.isa.objj_msgSend1(label, "setFrameOrigin:", CGPointMake(220, 20)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", label));
    var text = ((___r1 = CPTextField.isa.objj_msgSend0(CPTextField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(190, 40, 120, 28)));
    (text == null ? null : text.isa.objj_msgSend1(text, "setStringValue:", "Standard Text"));
    (text == null ? null : text.isa.objj_msgSend1(text, "setEditable:", YES));
    (text == null ? null : text.isa.objj_msgSend1(text, "setBezeled:", YES));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", text));
    var text = ((___r1 = CPTextField.isa.objj_msgSend0(CPTextField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(190, 75, 120, 28)));
    (text == null ? null : text.isa.objj_msgSend1(text, "setPlaceholderString:", "Placeholder Text"));
    (text == null ? null : text.isa.objj_msgSend1(text, "setEditable:", YES));
    (text == null ? null : text.isa.objj_msgSend1(text, "setBezeled:", YES));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", text));
    var text = ((___r1 = CPTextField.isa.objj_msgSend0(CPTextField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(190, 105, 120, 30)));
    (text == null ? null : text.isa.objj_msgSend1(text, "setPlaceholderString:", "Rounded Text"));
    (text == null ? null : text.isa.objj_msgSend1(text, "setEditable:", YES));
    (text == null ? null : text.isa.objj_msgSend1(text, "setBezeled:", YES));
    (text == null ? null : text.isa.objj_msgSend1(text, "setBezelStyle:", CPTextFieldRoundedBezel));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", text));
    var text = ((___r1 = CPTextField.isa.objj_msgSend0(CPTextField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(190, 142, 120, 30)));
    (text == null ? null : text.isa.objj_msgSend1(text, "setStringValue:", "Label"));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", text));
    var text = ((___r1 = CPSearchField.isa.objj_msgSend0(CPSearchField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(190, 172, 120, 30)));
    (text == null ? null : text.isa.objj_msgSend1(text, "setStringValue:", "Search Field"));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", text));
    var label = CPTextField.isa.objj_msgSend1(CPTextField, "labelWithTitle:", "Other Controls");
    (label == null ? null : label.isa.objj_msgSend1(label, "setFrameOrigin:", CGPointMake(380, 20)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", label));
    var control = ((___r1 = CPSegmentedControl.isa.objj_msgSend0(CPSegmentedControl, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(340, 40, 0, 24)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setSegmentCount:", 3));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 2));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 1", 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 2", 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 3", 2));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var control = ((___r1 = CPSegmentedControl.isa.objj_msgSend0(CPSegmentedControl, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(340, 75, 0, 24)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setSegmentCount:", 3));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setWidth:forSegment:", 50, 2));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 1", 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 2", 1));
    (control == null ? null : control.isa.objj_msgSend2(control, "setLabel:forSegment:", "Seg 3", 2));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTrackingMode:", CPSegmentSwitchTrackingSelectAny));
    (control == null ? null : control.isa.objj_msgSend2(control, "setSelected:forSegment:", YES, 0));
    (control == null ? null : control.isa.objj_msgSend2(control, "setSelected:forSegment:", YES, 2));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var control1 = ((___r1 = CPSlider.isa.objj_msgSend0(CPSlider, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(340, 100, 150, 24)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setFloatValue:", 25.0));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control1));
    var control2 = ((___r1 = CPSlider.isa.objj_msgSend0(CPSlider, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(340, 135, 24, 120)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control2));
    var control3 = ((___r1 = CPSlider.isa.objj_msgSend0(CPSlider, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(385, 150, 32, 32)));
    (control3 == null ? null : control3.isa.objj_msgSend1(control3, "setSliderType:", CPCircularSlider));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control3));
    (control1 == null ? null : control1.isa.objj_msgSend1(control1, "setTarget:", control2));
    (control1 == null ? null : control1.isa.objj_msgSend1(control1, "setAction:", sel_getUid("takeFloatValueFrom:")));
    (control2 == null ? null : control2.isa.objj_msgSend1(control2, "setTarget:", control1));
    (control2 == null ? null : control2.isa.objj_msgSend1(control2, "setAction:", sel_getUid("takeFloatValueFrom:")));
    var progress = ((___r1 = CPProgressIndicator.isa.objj_msgSend0(CPProgressIndicator, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(340, 265, 120, 15)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", progress));
    var callback = function()
    {
        var value = (progress == null ? null : progress.isa.objj_msgSend0(progress, "doubleValue"));
        if (this.increment && value >= 100)
            this.increment = NO;
        else if (!this.increment && value <= 0)
            this.increment = YES;
        (progress == null ? null : progress.isa.objj_msgSend1(progress, "incrementBy:", this.increment ? 1 : -1));
    };
    callback.increment = YES;
    var timer = CPTimer.isa.objj_msgSend3(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", .05, callback, YES);
    var control = ((___r1 = CPProgressIndicator.isa.objj_msgSend0(CPProgressIndicator, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(340, 295, 64, 64)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setStyle:", CPProgressIndicatorSpinningStyle));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var label = CPTextField.isa.objj_msgSend1(CPTextField, "labelWithTitle:", "More Awesome Stuff");
    (label == null ? null : label.isa.objj_msgSend1(label, "setFrameOrigin:", CGPointMake(535, 20)));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", label));
    var control = ((___r1 = CPTokenField.isa.objj_msgSend0(CPTokenField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(535, 40, 200, 100)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setObjectValue:", ["token", "field"]));
    (control == null ? null : control.isa.objj_msgSend1(control, "setEditable:", YES));
    (control == null ? null : control.isa.objj_msgSend1(control, "setDelegate:", (TokenFieldDelegate == null ? null : TokenFieldDelegate.isa.objj_msgSend0(TokenFieldDelegate, "new"))));
    (control == null ? null : control.isa.objj_msgSend1(control, "setCompletionDelay:", 0));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    var text = ((___r1 = CPTextField.isa.objj_msgSend0(CPTextField, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(535, 150, 200, 31)));
    (text == null ? null : text.isa.objj_msgSend1(text, "setBezeled:", YES));
    (text == null ? null : text.isa.objj_msgSend1(text, "setVerticalAlignment:", CPCenterVerticalTextAlignment));
    (text == null ? null : text.isa.objj_msgSend1(text, "setStringValue:", "0"));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", text));
    var control = ((___r1 = CPStepper.isa.objj_msgSend0(CPStepper, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(712, 153, 19, 26)));
    (control == null ? null : control.isa.objj_msgSend1(control, "setTarget:", text));
    (control == null ? null : control.isa.objj_msgSend1(control, "setAction:", sel_getUid("takeIntValueFrom:")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", control));
    return view;
    var ___r1;
}
,["CPView"]), new objj_method(sel_getUid("TableView"), function $SampleControlTabs__TableView(self, _cmd)
{
    var view = ((___r1 = CPView.isa.objj_msgSend0(CPView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", defaultViewRect));
    var scroll = ((___r1 = CPScrollView.isa.objj_msgSend0(CPScrollView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 25, CGRectGetWidth(defaultViewRect) / 2 - 50, CGRectGetHeight(defaultViewRect))));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setBorderType:", CPLineBorder));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", scroll));
    var table = ((___r1 = CPTableView.isa.objj_msgSend0(CPTableView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMakeZero())),
        columnCount = 3;
    var column = ((___r1 = CPTableColumn.isa.objj_msgSend0(CPTableColumn, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", "Image")),
        imageView = ((___r1 = CPImageView.isa.objj_msgSend0(CPImageView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMakeZero()));
    ((___r1 = (column == null ? null : column.isa.objj_msgSend0(column, "headerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setStringValue:", "Image"));
    (imageView == null ? null : imageView.isa.objj_msgSend1(imageView, "setImageScaling:", CPScaleNone));
    (column == null ? null : column.isa.objj_msgSend1(column, "setDataView:", imageView));
    (table == null ? null : table.isa.objj_msgSend1(table, "addTableColumn:", column));
    (table == null ? null : table.isa.objj_msgSend1(table, "setUsesAlternatingRowBackgroundColors:", YES));
    (table == null ? null : table.isa.objj_msgSend1(table, "registerForDraggedTypes:", ["testType"]));
    while (columnCount--)
    {
        var name = "Column " + ABS(columnCount - 3),
            column = ((___r1 = CPTableColumn.isa.objj_msgSend0(CPTableColumn, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", name));
        ((___r1 = (column == null ? null : column.isa.objj_msgSend0(column, "headerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setStringValue:", name));
        (column == null ? null : column.isa.objj_msgSend1(column, "setEditable:", YES));
        if (columnCount === 2)
            var desc = CPSortDescriptor.isa.objj_msgSend2(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "self", YES);
        else
            var desc = CPSortDescriptor.isa.objj_msgSend2(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "col" + columnCount, YES);
        (column == null ? null : column.isa.objj_msgSend1(column, "setSortDescriptorPrototype:", desc));
        (table == null ? null : table.isa.objj_msgSend1(table, "addTableColumn:", column));
    }
    var dataSourceAndDelegate = ((___r1 = (TableViewDataSource == null ? null : TableViewDataSource.isa.objj_msgSend0(TableViewDataSource, "alloc"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (table == null ? null : table.isa.objj_msgSend1(table, "setDataSource:", dataSourceAndDelegate));
    (table == null ? null : table.isa.objj_msgSend1(table, "setDelegate:", dataSourceAndDelegate));
    (table == null ? null : table.isa.objj_msgSend1(table, "setAllowsMultipleSelection:", YES));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setDocumentView:", table));
    var scroll = ((___r1 = CPScrollView.isa.objj_msgSend0(CPScrollView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(CGRectGetMaxX((scroll == null ? null : scroll.isa.objj_msgSend0(scroll, "frame"))) + 25, 25, CGRectGetWidth(defaultViewRect) / 2 - 50, CGRectGetHeight(defaultViewRect))));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setBorderType:", CPLineBorder));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", scroll));
    var table = ((___r1 = CPTableView.isa.objj_msgSend0(CPTableView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMakeZero())),
        columnCount = 3;
    var column = ((___r1 = CPTableColumn.isa.objj_msgSend0(CPTableColumn, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", "Image")),
        imageView = ((___r1 = CPImageView.isa.objj_msgSend0(CPImageView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMakeZero()));
    ((___r1 = (column == null ? null : column.isa.objj_msgSend0(column, "headerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setStringValue:", "Image"));
    (imageView == null ? null : imageView.isa.objj_msgSend1(imageView, "setImageScaling:", CPScaleNone));
    (column == null ? null : column.isa.objj_msgSend1(column, "setDataView:", imageView));
    (table == null ? null : table.isa.objj_msgSend1(table, "addTableColumn:", column));
    while (columnCount--)
    {
        var name = "Column " + ABS(columnCount - 3),
            column = ((___r1 = CPTableColumn.isa.objj_msgSend0(CPTableColumn, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", name));
        ((___r1 = (column == null ? null : column.isa.objj_msgSend0(column, "headerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setStringValue:", name));
        (table == null ? null : table.isa.objj_msgSend1(table, "addTableColumn:", column));
    }
    (table == null ? null : table.isa.objj_msgSend1(table, "setDataSource:", ((___r1 = (TableViewDataSource == null ? null : TableViewDataSource.isa.objj_msgSend0(TableViewDataSource, "alloc"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"))));
    (table == null ? null : table.isa.objj_msgSend1(table, "setSelectionHighlightStyle:", CPTableViewSelectionHighlightStyleSourceList));
    (table == null ? null : table.isa.objj_msgSend1(table, "registerForDraggedTypes:", ["testType"]));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setDocumentView:", table));
    return view;
    var ___r1;
}
,["CPView"]), new objj_method(sel_getUid("OutlineView"), function $SampleControlTabs__OutlineView(self, _cmd)
{
    var view = ((___r1 = CPView.isa.objj_msgSend0(CPView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", defaultViewRect));
    var scroll = ((___r1 = CPScrollView.isa.objj_msgSend0(CPScrollView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 20, 600, 400))),
        ov = ((___r1 = CPOutlineView.isa.objj_msgSend0(CPOutlineView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMakeZero())),
        col = ((___r1 = CPTableColumn.isa.objj_msgSend0(CPTableColumn, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", "ovcol"));
    ((___r1 = (col == null ? null : col.isa.objj_msgSend0(col, "headerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setStringValue:", "Outline Column"));
    var dataDelegate = ((___r1 = (OutlineViewDataSourceDelegate == null ? null : OutlineViewDataSourceDelegate.isa.objj_msgSend0(OutlineViewDataSourceDelegate, "alloc"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (dataDelegate == null ? null : dataDelegate.isa.objj_msgSend1(dataDelegate, "setOv:", ov));
    (ov == null ? null : ov.isa.objj_msgSend1(ov, "setDataSource:", dataDelegate));
    (ov == null ? null : ov.isa.objj_msgSend1(ov, "setDelegate:", dataDelegate));
    (col == null ? null : col.isa.objj_msgSend1(col, "setWidth:", 215));
    (ov == null ? null : ov.isa.objj_msgSend1(ov, "addTableColumn:", col));
    var col2 = ((___r1 = CPTableColumn.isa.objj_msgSend0(CPTableColumn, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithIdentifier:", "Column 2"));
    ((___r1 = (col2 == null ? null : col2.isa.objj_msgSend0(col2, "headerView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "setStringValue:", "Column 2"));
    (ov == null ? null : ov.isa.objj_msgSend1(ov, "addTableColumn:", col2));
    (scroll == null ? null : scroll.isa.objj_msgSend1(scroll, "setDocumentView:", ov));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", scroll));
    (ov == null ? null : ov.isa.objj_msgSend1(ov, "registerForDraggedTypes:", ["TestData"]));
    return view;
    var ___r1;
}
,["CPView"]), new objj_method(sel_getUid("Browser"), function $SampleControlTabs__Browser(self, _cmd)
{
    var view = ((___r1 = CPView.isa.objj_msgSend0(CPView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", defaultViewRect));
    var box = ((___r1 = CPBox.isa.objj_msgSend0(CPBox, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 40, 650, 200)));
    var browser = ((___r1 = CPBrowser.isa.objj_msgSend0(CPBrowser, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(1, 1, 648, 198)));
    (browser == null ? null : browser.isa.objj_msgSend1(browser, "setDelegate:", ((___r1 = (BrowserDelegate == null ? null : BrowserDelegate.isa.objj_msgSend0(BrowserDelegate, "alloc"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"))));
    (browser == null ? null : browser.isa.objj_msgSend1(browser, "setBackgroundColor:", CPColor.isa.objj_msgSend0(CPColor, "whiteColor")));
    (browser == null ? null : browser.isa.objj_msgSend1(browser, "setMinColumnWidth:", 170));
    (browser == null ? null : browser.isa.objj_msgSend1(browser, "setAllowsMultipleSelection:", NO));
    (box == null ? null : box.isa.objj_msgSend1(box, "addSubview:", browser));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", box));
    return view;
    var ___r1;
}
,["CPView"]), new objj_method(sel_getUid("WindowsAndAlerts"), function $SampleControlTabs__WindowsAndAlerts(self, _cmd)
{
    var view = ((___r1 = CPView.isa.objj_msgSend0(CPView, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", defaultViewRect));
    var window = ((___r1 = CPWindow.isa.objj_msgSend0(CPWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentRect:styleMask:", CGRectMake(100, 100, 400, 400), CPClosableWindowMask | CPResizableWindowMask));
    (window == null ? null : window.isa.objj_msgSend1(window, "setTitle:", "Sample Window"));
    (window == null ? null : window.isa.objj_msgSend1(window, "setMinSize:", CGSizeMake(100, 100)));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 20, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "CPWindow"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", window));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("orderFront:")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var platformWindow = ((___r1 = CPPlatformWindow.isa.objj_msgSend0(CPPlatformWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithContentRect:", CGRectMake(100, 100, 775, 400))),
        window = ((___r1 = CPWindow.isa.objj_msgSend0(CPWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentRect:styleMask:", CGRectMake(100, 100, 775, 400), CPClosableWindowMask | CPResizableWindowMask));
    (window == null ? null : window.isa.objj_msgSend1(window, "setTitle:", "Sample Window"));
    (window == null ? null : window.isa.objj_msgSend1(window, "setMinSize:", CGSizeMake(100, 100)));
    (window == null ? null : window.isa.objj_msgSend1(window, "setFullBridge:", YES));
    (window == null ? null : window.isa.objj_msgSend1(window, "setPlatformWindow:", platformWindow));
    (window == null ? null : window.isa.objj_msgSend1(window, "setContentView:", self.isa.objj_msgSend0(self, "generalControls")));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(130, 20, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "CPPlatformWindow"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", window));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("orderFront:")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Informational Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "Informational Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "This CPAlert is used to display information modally. It can have a help button and an accessory view, and a supression button."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsHelp:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsSuppressionButton:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPInformationalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Okay"));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(245, 20, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Info CPAlert"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", alrt));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("runModal")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Warning Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "Warning Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "This CPAlert is used to display warnings modally. It can have a help button and an accessory view, and a supression button."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsHelp:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsSuppressionButton:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPWarningAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Okay"));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(370, 20, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Warn CPAlert"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", alrt));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("runModal")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Error Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "Error Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "This CPAlert is used to display errors modally. It can have a help button and an accessory view, and a supression button."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsHelp:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsSuppressionButton:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPCriticalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Okay"));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(495, 20, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Error CPAlert"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", alrt));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("runModal")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Informational Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "Informational Alert"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "CPAlerts can also be used as sheets! With the same options as before."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsHelp:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setShowsSuppressionButton:", YES));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPInformationalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Okay"));
    var controller = ((___r1 = (SheetController == null ? null : SheetController.isa.objj_msgSend0(SheetController, "alloc"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (controller == null ? null : controller.isa.objj_msgSend1(controller, "setSheet:", alrt));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(15, 59, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Attached Sheet"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", controller));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("beginSheet:")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(130, 59, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "Color Panel"));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    var picker = CPColorPanel.isa.objj_msgSend0(CPColorPanel, "sharedColorPanel");
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", picker));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("orderFront:")));
    var window = ((___r1 = CPWindow.isa.objj_msgSend0(CPWindow, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentRect:styleMask:", CGRectMake(100, 100, 390, 285), CPClosableWindowMask | CPResizableWindowMask | CPHUDBackgroundWindowMask));
    (window == null ? null : window.isa.objj_msgSend1(window, "setTitle:", "HUD Window and Controls"));
    (window == null ? null : window.isa.objj_msgSend1(window, "setMinSize:", CGSizeMake(200, 75)));
    ((___r1 = (window == null ? null : window.isa.objj_msgSend0(window, "contentView"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "addSubview:", self.isa.objj_msgSend0(self, "generalHud")));
    var button = ((___r1 = CPButton.isa.objj_msgSend0(CPButton, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithFrame:", CGRectMake(245, 59, 100, 24)));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTitle:", "HUD"));
    (button == null ? null : button.isa.objj_msgSend1(button, "setTarget:", window));
    (button == null ? null : button.isa.objj_msgSend1(button, "setAction:", sel_getUid("orderFront:")));
    (view == null ? null : view.isa.objj_msgSend1(view, "addSubview:", button));
    return view;
    var ___r1;
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
        ((___r1 = self.data), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "addObject:", c));
    return self;
    var ___r1;
}
,["id"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $TableViewDataSource__numberOfRowsInTableView_(self, _cmd, aTable)
{
    return ((___r1 = self.data), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "count"));
    var ___r1;
}
,["int","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $TableViewDataSource__tableView_objectValueForTableColumn_row_(self, _cmd, aTable, aCol, aRow)
{
    if ((aCol == null ? null : aCol.isa.objj_msgSend0(aCol, "identifier")) === "Image")
        return ((___r1 = CPImage.isa.objj_msgSend0(CPImage, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend2(___r1, "initWithContentsOfFile:size:", "http://cappuccino.org/images/favicon.png", CGSizeMake(16, 16)));
    else if ((aCol == null ? null : aCol.isa.objj_msgSend0(aCol, "identifier")) === "Column 1")
        return "Row " + self.data[aRow];
    else
        return (aCol == null ? null : aCol.isa.objj_msgSend0(aCol, "identifier"));
    var ___r1;
}
,["id","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:isGroupRow:"), function $TableViewDataSource__tableView_isGroupRow_(self, _cmd, aTable, aRow)
{
    return self.data[aRow] % 10 === 0;
}
,["BOOL","CPTableView","int"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $TableViewDataSource__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableView, rowIndexes, pboard)
{
    (pboard == null ? null : pboard.isa.objj_msgSend2(pboard, "declareTypes:owner:", CPArray.isa.objj_msgSend1(CPArray, "arrayWithObject:", "testType"), self));
    return YES;
}
,["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $TableViewDataSource__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{
    return CPDragOperationMove;
}
,["CPDragOperation","CPTableView","id","CPInteger","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $TableViewDataSource__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, info, row, operation)
{
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Cool Features"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "No reordering implemented"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "Since this is just a demo we haven't actually implement the drop behavior here."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPInformationalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Okay"));
    (alrt == null ? null : alrt.isa.objj_msgSend0(alrt, "runModal"));
    return NO;
    var ___r1;
}
,["BOOL","CPTableView","id","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"), function $TableViewDataSource__tableView_setObjectValue_forTableColumn_row_(self, _cmd, aTableView, aValue, tableColumn, row)
{
    self.data[row] = aValue;
}
,["void","CPTableView","id","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TableViewDataSource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    var newDescriptors = (aTableView == null ? null : aTableView.isa.objj_msgSend0(aTableView, "sortDescriptors"));
    ((___r1 = self.data), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "sortUsingDescriptors:", newDescriptors));
    (aTableView == null ? null : aTableView.isa.objj_msgSend0(aTableView, "reloadData"));
    var ___r1;
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
            search = (aString == null ? null : aString.isa.objj_msgSend0(aString, "lowercaseString"));
        for (var i = 0, c = self.states.length; i < c; i++)
        {
            var state = ((___r1 = self.states[i]), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "lowercaseString"));
            if ((state == null ? null : state.isa.objj_msgSend1(state, "hasPrefix:", search)))
                (matches == null ? null : matches.isa.objj_msgSend1(matches, "addObject:", self.states[i]));
        }
        return matches;
    }
    else
        return [];
    var ___r1;
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
    return ((___r1 = item.sub), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "objectAtIndex:", index));
    var ___r1;
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
    var path = ((___r1 = CPBundle.isa.objj_msgSend0(CPBundle, "mainBundle")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "pathForResource:", "InitInfo.dict")),
        request = CPURLRequest.isa.objj_msgSend1(CPURLRequest, "requestWithURL:", path),
        connection = CPURLConnection.isa.objj_msgSend2(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    return self;
    var ___r1;
}
,["id"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $OutlineViewDataSourceDelegate__connection_didReceiveData_(self, _cmd, connection, dataString)
{
    if (!dataString)
        return;
    var data = ((___r1 = CPData.isa.objj_msgSend0(CPData, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithRawString:", dataString));
    self.rootItem = CPPropertyListSerialization.isa.objj_msgSend2(CPPropertyListSerialization, "propertyListFromData:format:", data, CPPropertyListXMLFormat_v1_0);
    ((___r1 = self.ov), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "reloadData"));
    var ___r1;
}
,["void","CPURLConnection","CPString"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $OutlineViewDataSourceDelegate__outlineView_numberOfChildrenOfItem_(self, _cmd, theOutlineView, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    if ((theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "isKindOfClass:", CPString.isa.objj_msgSend0(CPString, "class"))))
        return 0;
    return ((___r1 = (theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "objectForKey:", "Children"))), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "count"));
    var ___r1;
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $OutlineViewDataSourceDelegate__outlineView_child_ofItem_(self, _cmd, theOutlineView, theIndex, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    return ((___r1 = (theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "objectForKey:", "Children"))), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "objectAtIndex:", theIndex));
    var ___r1;
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $OutlineViewDataSourceDelegate__outlineView_isItemExpandable_(self, _cmd, theOutlineView, theItem)
{
    if (theItem == nil)
        theItem = self.rootItem;
    return !(theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "isKindOfClass:", CPString.isa.objj_msgSend0(CPString, "class")));
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $OutlineViewDataSourceDelegate__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, theColumn, theItem)
{
    if ((theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "isKindOfClass:", CPString.isa.objj_msgSend0(CPString, "class"))))
        return theItem;
    return (theItem == null ? null : theItem.isa.objj_msgSend1(theItem, "objectForKey:", "Name"));
}
,["id","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("outlineView:writeItems:toPasteboard:"), function $OutlineViewDataSourceDelegate__outlineView_writeItems_toPasteboard_(self, _cmd, anOutlineView, theItems, thePasteBoard)
{
    (thePasteBoard == null ? null : thePasteBoard.isa.objj_msgSend2(thePasteBoard, "declareTypes:owner:", ["TestData"], self));
    (thePasteBoard == null ? null : thePasteBoard.isa.objj_msgSend2(thePasteBoard, "setData:forType:", CPKeyedArchiver.isa.objj_msgSend1(CPKeyedArchiver, "archivedDataWithRootObject:", theItems), "testData"));
    return YES;
}
,["BOOL","CPOutlineView","CPArray","CPPasteBoard"]), new objj_method(sel_getUid("outlineView:validateDrop:proposedItem:proposedChildIndex:"), function $OutlineViewDataSourceDelegate__outlineView_validateDrop_proposedItem_proposedChildIndex_(self, _cmd, anOutlineView, theInfo, theItem, theIndex)
{
    if (theItem === nil)
        (anOutlineView == null ? null : anOutlineView.isa.objj_msgSend2(anOutlineView, "setDropItem:dropChildIndex:", nil, theIndex));
    (anOutlineView == null ? null : anOutlineView.isa.objj_msgSend2(anOutlineView, "setDropItem:dropChildIndex:", theItem, theIndex));
    return CPDragOperationEvery;
}
,["CPDragOperation","CPOutlineView","id","id","int"]), new objj_method(sel_getUid("outlineView:acceptDrop:item:childIndex:"), function $OutlineViewDataSourceDelegate__outlineView_acceptDrop_item_childIndex_(self, _cmd, outlineView, theInfo, theItem, theIndex)
{
    var alrt = ((___r1 = CPAlert.isa.objj_msgSend0(CPAlert, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setTitle:", "Cool Features"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setMessageText:", "No reordering implemented"));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setInformativeText:", "Since this is just a demo we haven't actually implement the drop behavior here."));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "setAlertStyle:", CPInformationalAlertStyle));
    (alrt == null ? null : alrt.isa.objj_msgSend1(alrt, "addButtonWithTitle:", "Okay"));
    (alrt == null ? null : alrt.isa.objj_msgSend0(alrt, "runModal"));
    return NO;
    var ___r1;
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
    self = (self == null ? null : self.isa.objj_msgSend0(self, "init"));
    self.name = aName;
    return self;
}
,["id","CPString"]), new objj_method(sel_getUid("compare:"), function $SimpleNodeData__compare_(self, _cmd, anOther)
{
    if ((anOther == null ? null : anOther.isa.objj_msgSend1(anOther, "isKindOfClass:", SimpleNodeData.isa.objj_msgSend0(SimpleNodeData, "class"))))
        return ((___r1 = self.name), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "compare:", (anOther == null ? null : anOther.isa.objj_msgSend0(anOther, "name"))));
    return CPOrderedAscending;
    var ___r1;
}
,["CPComparisonResult","id"]), new objj_method(sel_getUid("description"), function $SimpleNodeData__description(self, _cmd)
{
    return CPString.isa.objj_msgSend(CPString, "stringWithFormat:", "%@ - '%@' expandable: %d, selectable: %d, container: %d", objj_msgSendSuper({ receiver:self, super_class:objj_getClass("SimpleNodeData").super_class }, "description"), self.name, self.expandable, self.selectable, self.container);
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("nodeDataWithName:"), function $SimpleNodeData__nodeDataWithName_(self, _cmd, aName)
{
    return ((___r1 = SimpleNodeData.isa.objj_msgSend0(SimpleNodeData, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "initWithName:", aName));
    var ___r1;
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
    ((___r1 = self.sheet), ___r1 == null ? null : ___r1.isa.objj_msgSend1(___r1, "beginSheetModalForWindow:", (CPApp == null ? null : CPApp.isa.objj_msgSend0(CPApp, "mainWindow"))));
    var ___r1;
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
    var subviews = self.isa.objj_msgSend0(self, "subviews"),
        c = (subviews == null ? null : subviews.isa.objj_msgSend0(subviews, "count"));
    while (c--)
    {
        var view = subviews[c];
        if (view === sender)
        {
            (view == null ? null : view.isa.objj_msgSend1(view, "setTitle:", (view == null ? null : view.isa.objj_msgSend0(view, "title")) === "Disable All" ? "Enable All" : "Disable All"));
            continue;
        }
        if ((view == null ? null : view.isa.objj_msgSend1(view, "respondsToSelector:", sel_getUid("setEnabled:"))))
            (view == null ? null : view.isa.objj_msgSend1(view, "setEnabled:", !(view == null ? null : view.isa.objj_msgSend0(view, "isEnabled"))));
    }
}
,["void","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultMenu"), function $CPView__defaultMenu(self, _cmd)
{
    var menu = ((___r1 = CPMenu.isa.objj_msgSend0(CPMenu, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init")),
        words = ((___r1 = "Views/Can have/Contextual menus/If you/Want"), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "pathComponents"));
    for (var i = 0, c = (words == null ? null : words.isa.objj_msgSend0(words, "count")); i < c; i++)
    {
        if (words[i] === "Contextual menus")
        {
            var item = ((___r1 = CPMenuItem.isa.objj_msgSend0(CPMenuItem, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend3(___r1, "initWithTitle:action:keyEquivalent:", words[i], nil, nil)),
                sub = ((___r1 = CPMenu.isa.objj_msgSend0(CPMenu, "alloc")), ___r1 == null ? null : ___r1.isa.objj_msgSend0(___r1, "init"));
            (sub == null ? null : sub.isa.objj_msgSend3(sub, "addItemWithTitle:action:keyEquivalent:", "And They", nil, nil));
            (sub == null ? null : sub.isa.objj_msgSend3(sub, "addItemWithTitle:action:keyEquivalent:", "Can Have", nil, nil));
            (sub == null ? null : sub.isa.objj_msgSend3(sub, "addItemWithTitle:action:keyEquivalent:", "Sub Menus", nil, nil));
            (item == null ? null : item.isa.objj_msgSend1(item, "setSubmenu:", sub));
            (menu == null ? null : menu.isa.objj_msgSend1(menu, "addItem:", item));
        }
        else
            (menu == null ? null : menu.isa.objj_msgSend3(menu, "addItemWithTitle:action:keyEquivalent:", words[i], nil, nil));
    }
    return menu;
    var ___r1;
}
,["CPMenu"])]);
}p;6;main.jt;292;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;206;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/AppKit.j", NO);objj_executeFile("AppController.j", YES);main = function(args, namedArgs)
{
    CPApplicationMain(args, namedArgs);
}
e;