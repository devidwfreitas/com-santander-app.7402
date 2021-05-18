import android.content.Context;
import android.content.SharedPreferences;
import java.util.List;

public class dr {
  public static String a = null;
  
  public static final int e = 901;
  
  public static final int f = 902;
  
  public static final int g = 903;
  
  public static final int h = 904;
  
  public static final int i = 905;
  
  public static final int j = 906;
  
  public static final int k = 907;
  
  public static final int l = 908;
  
  public static final int m = 909;
  
  public static final int n = 910;
  
  public static final int o = 911;
  
  public static final int p = 912;
  
  public static final int q = 913;
  
  public static final int r = 914;
  
  public static final int s = 915;
  
  float b = 0.0F;
  
  int c = 0;
  
  StringBuffer d = new StringBuffer();
  
  private Object t = null;
  
  private List<String> u = null;
  
  private String v = null;
  
  private dt w = null;
  
  public static String a(Context paramContext, String paramString1, String paramString2) {
    try {
      return paramContext.getSharedPreferences(paramString1, 0).getString("aa" + paramString2, null);
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3) {
    try {
      SharedPreferences.Editor editor = paramContext.getSharedPreferences(paramString1, 0).edit();
      editor.putString("ab" + paramString2, paramString3);
      a(editor);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private static void a(SharedPreferences.Editor paramEditor) {
    byte b = 0;
    if (!paramEditor.commit())
      for (int i = 0;; i++) {
        if (i >= 100000) {
          if (!paramEditor.commit()) {
            for (i = 0;; i++) {
              if (i >= 100000) {
                if (!paramEditor.commit()) {
                  for (i = b;; i++) {
                    if (i >= 100000) {
                      paramEditor.commit();
                      return;
                    } 
                  } 
                  break;
                } 
                continue;
              } 
            } 
            break;
          } 
          continue;
        } 
      }  
  }
  
  public static String b(Context paramContext, String paramString1, String paramString2) {
    try {
      return paramContext.getSharedPreferences(paramString1, 0).getString("ab" + paramString2, null);
    } catch (Exception exception) {
      exception.printStackTrace();
      return null;
    } 
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, String paramString3) {
    try {
      SharedPreferences.Editor editor = paramContext.getSharedPreferences(paramString1, 0).edit();
      editor.putString("ab" + paramString2, paramString3);
      a(editor);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  public static void c(Context paramContext, String paramString1, String paramString2, String paramString3) {
    try {
      SharedPreferences.Editor editor = paramContext.getSharedPreferences(paramString1, 0).edit();
      editor.putString("aa" + paramString2, paramString3);
      a(editor);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  public void a(Context paramContext, Object paramObject, List<String> paramList, String paramString, dt paramdt) {
    this.u = paramList;
    this.v = paramString;
    this.w = paramdt;
    this.t = paramObject;
    (new ds(this, null)).execute((Object[])new Context[] { paramContext });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */