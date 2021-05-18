import android.content.SharedPreferences;

public final class nir {
  public static SharedPreferences a(nkj paramnkj) {
    String str = "tealium.datasources." + Integer.toHexString(b(paramnkj));
    return paramnkj.b().getSharedPreferences(str, 0);
  }
  
  private static int b(nkj paramnkj) {
    return (paramnkj.c() + '.' + paramnkj.d() + '.' + paramnkj.e()).hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */