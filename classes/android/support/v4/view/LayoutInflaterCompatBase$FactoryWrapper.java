package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

class LayoutInflaterCompatBase$FactoryWrapper implements LayoutInflater.Factory {
  final LayoutInflaterFactory mDelegateFactory;
  
  LayoutInflaterCompatBase$FactoryWrapper(LayoutInflaterFactory paramLayoutInflaterFactory) {
    this.mDelegateFactory = paramLayoutInflaterFactory;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet) {
    return this.mDelegateFactory.onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public String toString() {
    return getClass().getName() + "{" + this.mDelegateFactory + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\LayoutInflaterCompatBase$FactoryWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */