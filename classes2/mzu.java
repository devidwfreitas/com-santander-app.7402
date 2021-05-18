import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class mzu {
  public static final int a = 1;
  
  public static final int b = 2;
  
  public static final int c = 3;
  
  public static final int d = 4;
  
  public static final int e = 5;
  
  public static final int f = 6;
  
  public static final int g = 7;
  
  public static final int h = 8;
  
  public static final String i = "sans-serif";
  
  public static final String j = "sans-serif-light";
  
  public static final String k = "sans-serif-condensed";
  
  public static final String l = "sans-serif-thin";
  
  public static final String m = "sans-serif-medium";
  
  public static final String n = "ID_NAO_HABILITADO";
  
  public static final String o = "SANS_SERIF";
  
  public static final String p = "SERIF";
  
  public static final String q = "DEFAULT_BOLD";
  
  public static Typeface a(int paramInt, Context paramContext) {
    boolean bool1;
    boolean bool2;
    String str = (paramContext.getResources().getConfiguration()).locale.getLanguage();
    if (str != null && str.equals("my")) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (str != null && str.equals("si")) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (bool1)
      return Typeface.createFromAsset(paramContext.getAssets(), "fonts/zawgyi.ttf"); 
    if (bool2)
      return Typeface.createFromAsset(paramContext.getAssets(), "fonts/malithi.ttf"); 
    switch (paramInt) {
      default:
        return Typeface.create("sans-serif", 0);
      case 2:
        return Typeface.create("sans-serif", 1);
      case 3:
        return Typeface.create("sans-serif", 2);
      case 4:
        return Typeface.create("sans-serif", 3);
      case 5:
        return Typeface.create("sans-serif-light", 0);
      case 6:
        return Typeface.create("sans-serif-condensed", 0);
      case 7:
        return Typeface.create("sans-serif-medium", 0);
      case 8:
        break;
    } 
    return Typeface.create("sans-serif-thin", 0);
  }
  
  public static Typeface a(Context paramContext, int paramInt) {
    switch (paramInt) {
      default:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_regular.ttf");
      case 1:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_bold.ttf");
      case 2:
        return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_italic.ttf");
      case 3:
        break;
    } 
    return Typeface.createFromAsset(paramContext.getAssets(), "fonts/opensans_bolditalic.ttf");
  }
  
  public static void a(Context paramContext) {
    Typeface typeface1 = a(1, paramContext);
    Typeface typeface2 = a(1, paramContext);
    Typeface typeface3 = a(6, paramContext);
    Typeface typeface4 = a(7, paramContext);
    Typeface typeface5 = a(8, paramContext);
    if (Build.VERSION.SDK_INT >= 21) {
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      hashMap.put("sans-serif", typeface1);
      hashMap.put("sans-serif-light", typeface2);
      hashMap.put("sans-serif-condensed", typeface3);
      hashMap.put("sans-serif-thin", typeface4);
      hashMap.put("sans-serif-medium", typeface5);
      a((Map)hashMap);
    } else {
      a("SANS_SERIF", a(1, paramContext));
      a("SERIF", a(1, paramContext));
    } 
    a("ID_NAO_HABILITADO", a(1, paramContext));
    a("DEFAULT_BOLD", a(2, paramContext));
  }
  
  public static void a(String paramString, Typeface paramTypeface) {
    try {
      Field field = Typeface.class.getDeclaredField(paramString);
      field.setAccessible(true);
      field.set(null, paramTypeface);
      field.setAccessible(false);
      return;
    } catch (Exception exception) {
      Log.e("TypefaceUtil", "Can not set custom font " + paramTypeface.toString() + " instead of " + paramString);
      return;
    } 
  }
  
  private static void a(Map<String, Typeface> paramMap) {
    try {
      Field field = Typeface.class.getDeclaredField("sSystemFontMap");
      field.setAccessible(true);
      Map<String, Typeface> map = (Map)field.get(null);
      if (map != null) {
        map.putAll(paramMap);
        paramMap = map;
      } 
      field.set(null, paramMap);
      field.setAccessible(false);
      return;
    } catch (NoSuchFieldException noSuchFieldException) {
      Log.e("TypefaceUtil", "Can not set custom fonts, NoSuchFieldException");
      return;
    } catch (IllegalAccessException illegalAccessException) {
      Log.e("TypefaceUtil", "Can not set custom fonts, IllegalAccessException");
      return;
    } 
  }
  
  public static Typeface b(Context paramContext) {
    return a(1, paramContext);
  }
  
  public static Typeface c(Context paramContext) {
    return a(5, paramContext);
  }
  
  public static Typeface d(Context paramContext) {
    return a(2, paramContext);
  }
  
  public static Typeface e(Context paramContext) {
    return a(3, paramContext);
  }
  
  public static Typeface f(Context paramContext) {
    return a(4, paramContext);
  }
  
  public static Typeface g(Context paramContext) {
    return a(6, paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */