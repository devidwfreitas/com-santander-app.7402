package android.support.v4.view;

import android.os.Build;
import android.view.LayoutInflater;

public final class LayoutInflaterCompat {
  static final LayoutInflaterCompat$LayoutInflaterCompatImpl IMPL = new LayoutInflaterCompat$LayoutInflaterCompatImplBase();
  
  public static LayoutInflaterFactory getFactory(LayoutInflater paramLayoutInflater) {
    return IMPL.getFactory(paramLayoutInflater);
  }
  
  public static void setFactory(LayoutInflater paramLayoutInflater, LayoutInflaterFactory paramLayoutInflaterFactory) {
    IMPL.setFactory(paramLayoutInflater, paramLayoutInflaterFactory);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21) {
      IMPL = new LayoutInflaterCompat$LayoutInflaterCompatImplV21();
      return;
    } 
    if (i >= 11) {
      IMPL = new LayoutInflaterCompat$LayoutInflaterCompatImplV11();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\LayoutInflaterCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */