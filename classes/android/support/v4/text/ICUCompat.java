package android.support.v4.text;

import android.os.Build;
import java.util.Locale;

public final class ICUCompat {
  private static final ICUCompat$ICUCompatImpl IMPL = new ICUCompat$ICUCompatImplBase();
  
  public static String maximizeAndGetScript(Locale paramLocale) {
    return IMPL.maximizeAndGetScript(paramLocale);
  }
  
  static {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21) {
      IMPL = new ICUCompat$ICUCompatImplLollipop();
      return;
    } 
    if (i >= 14) {
      IMPL = new ICUCompat$ICUCompatImplIcs();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\ICUCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */