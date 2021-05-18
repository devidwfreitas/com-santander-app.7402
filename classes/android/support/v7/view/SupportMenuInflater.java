package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.XmlResourceParser;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SupportMenuInflater extends MenuInflater {
  static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
  
  static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE = new Class[] { Context.class };
  
  static final String LOG_TAG = "SupportMenuInflater";
  
  static final int NO_ID = 0;
  
  private static final String XML_GROUP = "group";
  
  private static final String XML_ITEM = "item";
  
  private static final String XML_MENU = "menu";
  
  final Object[] mActionProviderConstructorArguments;
  
  final Object[] mActionViewConstructorArguments;
  
  Context mContext;
  
  private Object mRealOwner;
  
  static {
    ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
  }
  
  public SupportMenuInflater(Context paramContext) {
    super(paramContext);
    this.mContext = paramContext;
    this.mActionViewConstructorArguments = new Object[] { paramContext };
    this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
  }
  
  private Object findRealOwner(Object paramObject) {
    return (!(paramObject instanceof android.app.Activity) && paramObject instanceof ContextWrapper) ? findRealOwner(((ContextWrapper)paramObject).getBaseContext()) : paramObject;
  }
  
  private void parseMenu(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu) {
    SupportMenuInflater$MenuState supportMenuInflater$MenuState = new SupportMenuInflater$MenuState(this, paramMenu);
    int i = paramXmlPullParser.getEventType();
    while (true) {
      if (i == 2) {
        String str = paramXmlPullParser.getName();
        if (str.equals("menu")) {
          i = paramXmlPullParser.next();
        } else {
          throw new RuntimeException("Expecting menu, got " + str);
        } 
      } else {
        int k = paramXmlPullParser.next();
        i = k;
        if (k == 1) {
          i = k;
        } else {
          continue;
        } 
      } 
      paramMenu = null;
      boolean bool2 = false;
      int j = i;
      boolean bool1 = false;
      i = bool2;
      while (!bool1) {
        String str1;
        String str2;
        switch (j) {
          default:
            j = paramXmlPullParser.next();
            continue;
          case 2:
            if (i == 0) {
              String str = paramXmlPullParser.getName();
              if (str.equals("group")) {
                supportMenuInflater$MenuState.readGroup(paramAttributeSet);
              } else if (str.equals("item")) {
                supportMenuInflater$MenuState.readItem(paramAttributeSet);
              } else if (str.equals("menu")) {
                parseMenu(paramXmlPullParser, paramAttributeSet, (Menu)supportMenuInflater$MenuState.addSubMenuItem());
              } else {
                str1 = str;
                i = 1;
              } 
            } 
          case 3:
            str2 = paramXmlPullParser.getName();
            if (i != 0 && str2.equals(str1)) {
              str1 = null;
              i = 0;
            } else if (str2.equals("group")) {
              supportMenuInflater$MenuState.resetGroup();
            } else if (str2.equals("item")) {
              if (!supportMenuInflater$MenuState.hasAddedItem())
                if (supportMenuInflater$MenuState.itemActionProvider != null && supportMenuInflater$MenuState.itemActionProvider.hasSubMenu()) {
                  supportMenuInflater$MenuState.addSubMenuItem();
                } else {
                  supportMenuInflater$MenuState.addItem();
                }  
            } else if (str2.equals("menu")) {
              bool1 = true;
            } 
          case 1:
            break;
        } 
        throw new RuntimeException("Unexpected end of document");
      } 
      return;
    } 
  }
  
  Object getRealOwner() {
    if (this.mRealOwner == null)
      this.mRealOwner = findRealOwner(this.mContext); 
    return this.mRealOwner;
  }
  
  public void inflate(int paramInt, Menu paramMenu) {
    if (!(paramMenu instanceof android.support.v4.internal.view.SupportMenu)) {
      super.inflate(paramInt, paramMenu);
      return;
    } 
    XmlResourceParser xmlResourceParser1 = null;
    XmlResourceParser xmlResourceParser3 = null;
    XmlResourceParser xmlResourceParser2 = null;
    try {
      XmlResourceParser xmlResourceParser = this.mContext.getResources().getLayout(paramInt);
      xmlResourceParser2 = xmlResourceParser;
      xmlResourceParser1 = xmlResourceParser;
      xmlResourceParser3 = xmlResourceParser;
      parseMenu((XmlPullParser)xmlResourceParser, Xml.asAttributeSet((XmlPullParser)xmlResourceParser), paramMenu);
      return;
    } catch (XmlPullParserException xmlPullParserException) {
      xmlResourceParser1 = xmlResourceParser2;
      throw new InflateException("Error inflating menu XML", xmlPullParserException);
    } catch (IOException iOException) {
      xmlResourceParser1 = xmlResourceParser3;
      throw new InflateException("Error inflating menu XML", iOException);
    } finally {
      if (xmlResourceParser1 != null)
        xmlResourceParser1.close(); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\SupportMenuInflater.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */