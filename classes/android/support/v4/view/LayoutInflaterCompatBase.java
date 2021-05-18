package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.LayoutInflater;

@TargetApi(9)
@RequiresApi(9)
class LayoutInflaterCompatBase {
  static LayoutInflaterFactory getFactory(LayoutInflater paramLayoutInflater) {
    LayoutInflater.Factory factory = paramLayoutInflater.getFactory();
    return (factory instanceof LayoutInflaterCompatBase$FactoryWrapper) ? ((LayoutInflaterCompatBase$FactoryWrapper)factory).mDelegateFactory : null;
  }
  
  static void setFactory(LayoutInflater paramLayoutInflater, LayoutInflaterFactory paramLayoutInflaterFactory) {
    if (paramLayoutInflaterFactory != null) {
      LayoutInflaterCompatBase$FactoryWrapper layoutInflaterCompatBase$FactoryWrapper = new LayoutInflaterCompatBase$FactoryWrapper(paramLayoutInflaterFactory);
    } else {
      paramLayoutInflaterFactory = null;
    } 
    paramLayoutInflater.setFactory((LayoutInflater.Factory)paramLayoutInflaterFactory);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\LayoutInflaterCompatBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */