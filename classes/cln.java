import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

@Deprecated
public class cln {
  @Deprecated
  public static void a(Context paramContext, String paramString1, clo paramclo, String paramString2, String paramString3, boolean paramBoolean) {
    if (paramclo == clo.GOOGLE_CONVERSION) {
      clj.a(paramContext, paramString1, paramString2, paramString3, paramBoolean);
      return;
    } 
    clm.b(paramContext, paramString1, paramString2, paramString3, paramBoolean);
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, Map<String, String> paramMap) {
    HashMap<Object, Object> hashMap;
    paramString2 = null;
    if (paramMap != null || !TextUtils.isEmpty(paramString3)) {
      hashMap = new HashMap<Object, Object>();
      if (paramMap != null)
        for (Map.Entry<String, String> entry : paramMap.entrySet())
          hashMap.put(entry.getKey(), entry.getValue());  
      if (!TextUtils.isEmpty(paramString3))
        hashMap.put("screen_name", paramString3); 
    } 
    clk.a(paramContext, paramString1, (Map)hashMap);
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    clj.a(paramContext, paramString1, paramString2, paramString3, paramBoolean);
  }
  
  @Deprecated
  public static boolean a(Context paramContext, Uri paramUri) {
    return clj.a(paramContext, paramUri);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */