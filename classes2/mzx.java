import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.io.InputStream;
import java.util.Properties;

public class mzx {
  private static mzx d;
  
  private static mzx e;
  
  private Properties a;
  
  private InputStream b;
  
  private Context c;
  
  private mzx(boolean paramBoolean, Context paramContext) {
    int i;
    this.a = new Properties();
    Resources resources = paramContext.getResources();
    if (paramBoolean) {
      i = b(paramContext);
    } else {
      i = a(paramContext);
    } 
    this.b = resources.openRawResource(i);
    try {
      this.a.load(this.b);
      return;
    } catch (Exception exception) {
      Log.e("ERROR_PROPERTIES_HUB", exception.getMessage());
      return;
    } 
  }
  
  private int a(Context paramContext) {
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
            return paramContext.getResources().getIdentifier("hubconfig_oculto", "raw", paramContext.getPackageName());
          case 5:
          case 6:
            break;
        } 
        return paramContext.getResources().getIdentifier("hubconfig_prod", "raw", paramContext.getPackageName());
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
        break;
    } 
    if (str.equals("https://m.santander.com.br/"))
      b = 6; 
  }
  
  public static mzx a() {
    if (d == null)
      d = new mzx(false, MinhaConta.b()); 
    return d;
  }
  
  private int b(Context paramContext) {
    String str = miq.C().m();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return paramContext.getResources().getIdentifier("paasconfig_dev", "raw", paramContext.getPackageName());
          case 0:
            return paramContext.getResources().getIdentifier("paasconfig_dev", "raw", paramContext.getPackageName());
          case 1:
            return paramContext.getResources().getIdentifier("paasconfig_dev", "raw", paramContext.getPackageName());
          case 2:
            return paramContext.getResources().getIdentifier("paasconfig_hk", "raw", paramContext.getPackageName());
          case 3:
            return paramContext.getResources().getIdentifier("paasconfig_hk", "raw", paramContext.getPackageName());
          case 4:
            return paramContext.getResources().getIdentifier("paasconfig_mbbocu", "raw", paramContext.getPackageName());
          case 5:
            return paramContext.getResources().getIdentifier("paasconfig_mbbdeploy", "raw", paramContext.getPackageName());
          case 6:
            break;
        } 
        return paramContext.getResources().getIdentifier("paasconfig_prod", "raw", paramContext.getPackageName());
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
        break;
    } 
    if (str.equals("https://m.santander.com.br/"))
      b = 6; 
  }
  
  public static mzx b() {
    if (e == null)
      e = new mzx(true, MinhaConta.b()); 
    return e;
  }
  
  public Properties c() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */