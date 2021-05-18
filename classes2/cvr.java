import android.database.CharArrayBuffer;
import android.text.TextUtils;

public final class cvr {
  public static void a(String paramString, CharArrayBuffer paramCharArrayBuffer) {
    if (TextUtils.isEmpty(paramString)) {
      paramCharArrayBuffer.sizeCopied = 0;
    } else if (paramCharArrayBuffer.data == null || paramCharArrayBuffer.data.length < paramString.length()) {
      paramCharArrayBuffer.data = paramString.toCharArray();
    } else {
      paramString.getChars(0, paramString.length(), paramCharArrayBuffer.data, 0);
    } 
    paramCharArrayBuffer.sizeCopied = paramString.length();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */