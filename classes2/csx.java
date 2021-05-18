import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;

public class csx {
  public static String a(String paramString1, String paramString2, Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2, String paramString3) {
    if (paramAttributeSet == null) {
      paramString1 = null;
    } else {
      paramString1 = paramAttributeSet.getAttributeValue(paramString1, paramString2);
    } 
    String str = paramString1;
    if (paramString1 != null) {
      str = paramString1;
      if (paramString1.startsWith("@string/")) {
        str = paramString1;
        if (paramBoolean1) {
          String str1 = paramString1.substring("@string/".length());
          String str2 = paramContext.getPackageName();
          TypedValue typedValue = new TypedValue();
          try {
            paramContext.getResources().getValue((new StringBuilder(String.valueOf(str2).length() + 8 + String.valueOf(str1).length())).append(str2).append(":string/").append(str1).toString(), typedValue, true);
          } catch (android.content.res.Resources.NotFoundException notFoundException) {
            Log.w(paramString3, (new StringBuilder(String.valueOf(paramString2).length() + 30 + String.valueOf(paramString1).length())).append("Could not find resource for ").append(paramString2).append(": ").append(paramString1).toString());
          } 
          if (typedValue.string != null) {
            str = typedValue.string.toString();
          } else {
            String str3 = String.valueOf(str);
            Log.w(paramString3, (new StringBuilder(String.valueOf(paramString2).length() + 28 + String.valueOf(str3).length())).append("Resource ").append(paramString2).append(" was not a string: ").append(str3).toString());
            str = paramString1;
          } 
        } 
      } 
    } 
    if (paramBoolean2 && str == null)
      Log.w(paramString3, (new StringBuilder(String.valueOf(paramString2).length() + 33)).append("Required XML attribute \"").append(paramString2).append("\" missing").toString()); 
    return str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */