package android.support.v4.text;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Locale;

public final class TextUtilsCompat {
  static String ARAB_SCRIPT_SUBTAG;
  
  static String HEBR_SCRIPT_SUBTAG;
  
  private static final TextUtilsCompat$TextUtilsCompatImpl IMPL;
  
  public static final Locale ROOT = new Locale("", "");
  
  static {
    ARAB_SCRIPT_SUBTAG = "Arab";
    HEBR_SCRIPT_SUBTAG = "Hebr";
  }
  
  public static int getLayoutDirectionFromLocale(@Nullable Locale paramLocale) {
    return IMPL.getLayoutDirectionFromLocale(paramLocale);
  }
  
  @NonNull
  public static String htmlEncode(@NonNull String paramString) {
    return IMPL.htmlEncode(paramString);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 17) {
      IMPL = new TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl();
    } else {
      IMPL = new TextUtilsCompat$TextUtilsCompatImpl();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextUtilsCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */