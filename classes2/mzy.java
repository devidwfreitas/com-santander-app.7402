import android.content.Context;
import android.util.Log;
import java.io.InputStream;
import java.util.Properties;

public class mzy {
  private static mzy c;
  
  private Properties a = new Properties();
  
  private InputStream b;
  
  private mzy(Context paramContext, boolean paramBoolean) {
    this.b = paramContext.getResources().openRawResource(b(paramContext, paramBoolean));
    try {
      this.a.load(this.b);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_PROPERTIES_HUB", exception.getMessage());
      return;
    } 
  }
  
  public static mzy a(Context paramContext, boolean paramBoolean) {
    if (c == null)
      c = new mzy(paramContext, paramBoolean); 
    return c;
  }
  
  private int b(Context paramContext, boolean paramBoolean) {
    String str = miq.C().m();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return paramContext.getResources().getIdentifier("hubconfig_dev", "raw", paramContext.getPackageName());
          case 0:
            return paramContext.getResources().getIdentifier("hubconfig_dev", "raw", paramContext.getPackageName());
          case 1:
            return paramContext.getResources().getIdentifier("hubconfig_pi", "raw", paramContext.getPackageName());
          case 2:
            return paramContext.getResources().getIdentifier("hubconfig_hk", "raw", paramContext.getPackageName());
          case 3:
            return paramContext.getResources().getIdentifier("hubconfig_hi", "raw", paramContext.getPackageName());
          case 4:
            return paramBoolean ? paramContext.getResources().getIdentifier("hubconfig_geo_prod", "raw", paramContext.getPackageName()) : paramContext.getResources().getIdentifier("hubconfig_oculto", "raw", paramContext.getPackageName());
          case 5:
          case 6:
            break;
        } 
        break;
      case 866802674:
        if (str.equals("https://mbbdes.santanderbr.pre.corp/"))
          b = 0; 
      case 1065163605:
        if (str.equals("https://mbbpi.santanderbr.pre.corp/"))
          b = 1; 
      case -204220705:
        if (str.equals("https://mbbhk.santanderbr.pre.corp/"))
          b = 2; 
      case -1435736633:
        if (str.equals("https://mbbhk.santander.com.br/"))
          b = 3; 
      case 1296175017:
        if (str.equals("https://mbbocu.santander.com.br/"))
          b = 4; 
      case -948024917:
        if (str.equals("https://mbbdeploy.santander.com.br/"))
          b = 5; 
      case -1707526588:
        if (str.equals("https://m.santander.com.br/"))
          b = 6; 
    } 
    return paramBoolean ? paramContext.getResources().getIdentifier("hubconfig_geo_prod", "raw", paramContext.getPackageName()) : paramContext.getResources().getIdentifier("hubconfig_prod", "raw", paramContext.getPackageName());
  }
  
  public Properties a() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */