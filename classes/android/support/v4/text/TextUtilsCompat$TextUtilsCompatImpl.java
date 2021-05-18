package android.support.v4.text;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Locale;

class TextUtilsCompat$TextUtilsCompatImpl {
  private static int getLayoutDirectionFromFirstChar(@NonNull Locale paramLocale) {
    switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0))) {
      default:
        return 0;
      case 1:
      case 2:
        break;
    } 
    return 1;
  }
  
  public int getLayoutDirectionFromLocale(@Nullable Locale paramLocale) {
    if (paramLocale != null && !paramLocale.equals(TextUtilsCompat.ROOT)) {
      String str = ICUCompat.maximizeAndGetScript(paramLocale);
      if (str == null)
        return getLayoutDirectionFromFirstChar(paramLocale); 
      if (str.equalsIgnoreCase(TextUtilsCompat.ARAB_SCRIPT_SUBTAG) || str.equalsIgnoreCase(TextUtilsCompat.HEBR_SCRIPT_SUBTAG))
        return 1; 
    } 
    return 0;
  }
  
  @NonNull
  public String htmlEncode(@NonNull String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0;; i++) {
      if (i < paramString.length()) {
        char c = paramString.charAt(i);
        switch (c) {
          default:
            stringBuilder.append(c);
            i++;
            continue;
          case '<':
            stringBuilder.append("&lt;");
            i++;
            continue;
          case '>':
            stringBuilder.append("&gt;");
            i++;
            continue;
          case '&':
            stringBuilder.append("&amp;");
            i++;
            continue;
          case '\'':
            stringBuilder.append("&#39;");
            i++;
            continue;
          case '"':
            break;
        } 
        stringBuilder.append("&quot;");
      } else {
        break;
      } 
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextUtilsCompat$TextUtilsCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */