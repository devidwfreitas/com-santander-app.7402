package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

class LayoutInflaterCompatHC$FactoryWrapperHC extends LayoutInflaterCompatBase$FactoryWrapper implements LayoutInflater.Factory2 {
  LayoutInflaterCompatHC$FactoryWrapperHC(LayoutInflaterFactory paramLayoutInflaterFactory) {
    super(paramLayoutInflaterFactory);
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet) {
    return this.mDelegateFactory.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\LayoutInflaterCompatHC$FactoryWrapperHC.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */