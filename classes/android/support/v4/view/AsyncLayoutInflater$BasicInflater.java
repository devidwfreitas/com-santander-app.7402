package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

class AsyncLayoutInflater$BasicInflater extends LayoutInflater {
  private static final String[] sClassPrefixList = new String[] { "android.widget.", "android.webkit.", "android.app." };
  
  AsyncLayoutInflater$BasicInflater(Context paramContext) {
    super(paramContext);
  }
  
  public LayoutInflater cloneInContext(Context paramContext) {
    return new AsyncLayoutInflater$BasicInflater(paramContext);
  }
  
  protected View onCreateView(String paramString, AttributeSet paramAttributeSet) {
    for (String str : sClassPrefixList) {
      try {
        View view = createView(paramString, str, paramAttributeSet);
        if (view != null)
          return view; 
      } catch (ClassNotFoundException classNotFoundException) {}
    } 
    return super.onCreateView(paramString, paramAttributeSet);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AsyncLayoutInflater$BasicInflater.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */