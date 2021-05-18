import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.util.Base64;

public class ieu {
  private Context a;
  
  private FingerprintManager b;
  
  private KeyguardManager c;
  
  public ieu(Context paramContext) {
    this.a = paramContext;
    if (Build.VERSION.SDK_INT >= 23) {
      this.b = (FingerprintManager)paramContext.getSystemService(FingerprintManager.class);
      this.c = (KeyguardManager)paramContext.getSystemService(KeyguardManager.class);
    } 
  }
  
  public boolean a() {
    boolean bool1 = true;
    String str = Base64.encodeToString(miq.C().f().k().getBytes(), 0).trim().replace("\n", "");
    if (Build.VERSION.SDK_INT >= 23) {
      if (ActivityCompat.checkSelfPermission(this.a, "android.permission.USE_FINGERPRINT") != 0) {
        ActivityCompat.requestPermissions((Activity)this.a, new String[] { "android.permission.USE_FINGERPRINT" }, 6);
        return false;
      } 
    } else {
      return false;
    } 
    Context context1 = this.a;
    Context context2 = this.a;
    boolean bool2 = context1.getSharedPreferences("offerFingerprintEnabling", 0).getBoolean(str, true);
    boolean bool3 = this.b.isHardwareDetected();
    if (bool3) {
      bool1 = this.b.hasEnrolledFingerprints();
      boolean bool = this.c.isKeyguardSecure();
      return (bool2 && bool3 && bool1 && bool);
    } 
    if (!bool2 || !bool3)
      bool1 = false; 
    return bool1;
  }
  
  public boolean a(String paramString) {
    if (!paramString.isEmpty() && !paramString.contains("***.***")) {
      paramString = Base64.encodeToString(nai.c(paramString).getBytes(), 0).trim().replace("\n", "");
      Context context4 = this.a;
      Context context5 = this.a;
      return context4.getSharedPreferences("fingerprintEnable", 0).getBoolean(paramString, false);
    } 
    if (miq.C().f().k() != null) {
      paramString = Base64.encodeToString(nai.c(miq.C().f().k()).getBytes(), 0).trim().replace("\n", "");
      Context context4 = this.a;
      Context context5 = this.a;
      return context4.getSharedPreferences("fingerprintEnable", 0).getBoolean(paramString, false);
    } 
    Context context1 = this.a;
    Context context2 = this.a;
    String str = context1.getSharedPreferences("SovereignBrasilProfile", 0).getString("l", "").trim().replace("\n", "");
    context2 = this.a;
    Context context3 = this.a;
    return context2.getSharedPreferences("fingerprintEnable", 0).getBoolean(str, false);
  }
  
  public boolean b() {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ActivityCompat.checkSelfPermission(this.a, "android.permission.USE_FINGERPRINT") != 0)
        ActivityCompat.requestPermissions((Activity)this.a, new String[] { "android.permission.USE_FINGERPRINT" }, 6); 
      boolean bool2 = this.b.isHardwareDetected();
      boolean bool1 = bool2;
      if (bool2) {
        bool1 = this.b.hasEnrolledFingerprints();
        boolean bool = this.c.isKeyguardSecure();
        if (bool2 && bool1 && bool)
          return true; 
      } else {
        return bool1;
      } 
      return false;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ieu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */