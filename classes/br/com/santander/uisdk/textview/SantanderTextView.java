package br.com.santander.uisdk.textview;

import alx;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import ang;

public class SantanderTextView extends TextView {
  public static final String a = "http://schemas.android.com/apk/res/android";
  
  public SantanderTextView(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null);
  }
  
  public SantanderTextView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SantanderTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    int i = 0;
    if (paramAttributeSet != null) {
      i = paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "textStyle", 0);
      paramContext.obtainStyledAttributes(paramAttributeSet, alx.SantanderEditText);
    } 
    switch (i) {
      default:
        typeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_regular.ttf");
        setTypeface(typeface);
        return;
      case 1:
        typeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_bold.ttf");
        setTypeface(typeface);
        return;
      case 2:
        typeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_italic.ttf");
        setTypeface(typeface);
        return;
      case 3:
        break;
    } 
    Typeface typeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/opensans_bolditalic.ttf");
    setTypeface(typeface);
  }
  
  public ang a() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\textview\SantanderTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */