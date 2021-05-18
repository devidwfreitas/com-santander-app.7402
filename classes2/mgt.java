import android.text.TextUtils;

public class mgt {
  public static boolean a(String paramString) {
    return (!TextUtils.isEmpty(paramString) && mhj.m(paramString).toUpperCase().contains("RESIDENCIAL"));
  }
  
  public static boolean b(String paramString) {
    return (!TextUtils.isEmpty(paramString) && (mhj.m(paramString).toLowerCase().contains("acidente") || mhj.m(paramString).replace(" ", "").toLowerCase().equalsIgnoreCase("ap")));
  }
  
  public static boolean c(String paramString) {
    return (!TextUtils.isEmpty(paramString) && mhj.m(paramString).toUpperCase().contains("PRESTAMISTA"));
  }
  
  public static boolean d(String paramString) {
    return (!TextUtils.isEmpty(paramString) && mhj.m(paramString).toLowerCase().contains("vida"));
  }
  
  public static boolean e(String paramString) {
    return (!TextUtils.isEmpty(paramString) && mhj.m(paramString).toLowerCase().contains("auto"));
  }
  
  public static boolean f(String paramString) {
    return (paramString != null && (paramString.toLowerCase().contains("scp") || paramString.toLowerCase().contains("cartaoprotegido")));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */