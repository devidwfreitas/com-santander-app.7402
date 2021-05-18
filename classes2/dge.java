import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import java.io.File;
import org.apache.http.client.HttpClient;

public class dge {
  public static dsd a(Context paramContext) {
    return a(paramContext, null);
  }
  
  public static dsd a(Context paramContext, dsz paramdsz) {
    dsd dsd2;
    File file = new File(paramContext.getCacheDir(), "volley");
    String str = "volley/0";
    try {
      String str2 = paramContext.getPackageName();
      PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(str2, 0);
      String str1 = str2 + "/" + packageInfo.versionCode;
      str = str1;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    dsz dsz1 = paramdsz;
    if (paramdsz == null) {
      if (Build.VERSION.SDK_INT >= 9) {
        dsz1 = new daf();
        dsp dsp1 = new dsp(dsz1);
        dsd2 = new dsd(new dss(file), dsp1);
        dsd2.a();
        return dsd2;
      } 
    } else {
      dsp dsp1 = new dsp((dsz)dsd2);
      dsd dsd = new dsd(new dss(file), dsp1);
      dsd.a();
      return dsd;
    } 
    dsw dsw = new dsw((HttpClient)AndroidHttpClient.newInstance(str));
    dsp dsp = new dsp(dsw);
    dsd dsd1 = new dsd(new dss(file), dsp);
    dsd1.a();
    return dsd1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */