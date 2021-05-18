package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;

@TargetApi(11)
@RequiresApi(11)
class LayoutInflaterCompatHC {
  private static final String TAG = "LayoutInflaterCompatHC";
  
  private static boolean sCheckedField;
  
  private static Field sLayoutInflaterFactory2Field;
  
  static void forceSetFactory2(LayoutInflater paramLayoutInflater, LayoutInflater.Factory2 paramFactory2) {
    if (!sCheckedField) {
      try {
        sLayoutInflaterFactory2Field = LayoutInflater.class.getDeclaredField("mFactory2");
        sLayoutInflaterFactory2Field.setAccessible(true);
      } catch (NoSuchFieldException noSuchFieldException) {
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", noSuchFieldException);
      } 
      sCheckedField = true;
    } 
    if (sLayoutInflaterFactory2Field != null)
      try {
        sLayoutInflaterFactory2Field.set(paramLayoutInflater, paramFactory2);
        return;
      } catch (IllegalAccessException illegalAccessException) {
        Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + paramLayoutInflater + "; inflation may have unexpected results.", illegalAccessException);
        return;
      }  
  }
  
  static void setFactory(LayoutInflater paramLayoutInflater, LayoutInflaterFactory paramLayoutInflaterFactory) {
    if (paramLayoutInflaterFactory != null) {
      LayoutInflaterCompatHC$FactoryWrapperHC layoutInflaterCompatHC$FactoryWrapperHC = new LayoutInflaterCompatHC$FactoryWrapperHC(paramLayoutInflaterFactory);
    } else {
      paramLayoutInflaterFactory = null;
    } 
    paramLayoutInflater.setFactory2((LayoutInflater.Factory2)paramLayoutInflaterFactory);
    LayoutInflater.Factory factory = paramLayoutInflater.getFactory();
    if (factory instanceof LayoutInflater.Factory2) {
      forceSetFactory2(paramLayoutInflater, (LayoutInflater.Factory2)factory);
      return;
    } 
    forceSetFactory2(paramLayoutInflater, (LayoutInflater.Factory2)paramLayoutInflaterFactory);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\LayoutInflaterCompatHC.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */