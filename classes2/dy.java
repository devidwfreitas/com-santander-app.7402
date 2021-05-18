import android.content.Context;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import org.json.JSONObject;

public class dy {
  public static String a(Context paramContext) {
    try {
      Signature[] arrayOfSignature = (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64)).signatures;
      if (arrayOfSignature.length != 0) {
        Signature signature = arrayOfSignature[0];
        MessageDigest messageDigest = MessageDigest.getInstance(dx.b());
        messageDigest.update(signature.toByteArray());
        return (new String(Base64.encode(messageDigest.digest(), 0))).trim();
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return "";
    } 
    return "";
  }
  
  public static String b(Context paramContext) {
    try {
      Signature[] arrayOfSignature = (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64)).signatures;
      if (arrayOfSignature.length != 0) {
        Signature signature = arrayOfSignature[0];
        MessageDigest messageDigest = MessageDigest.getInstance(dx.e());
        messageDigest.update(signature.toByteArray());
        return (new String(az.a(messageDigest.digest()))).trim();
      } 
    } catch (Exception exception) {
      exception.printStackTrace();
      return "";
    } 
    return "";
  }
  
  public static String c(Context paramContext) {
    return paramContext.getPackageName();
  }
  
  static JSONObject d(Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("a", paramContext.getPackageName());
      jSONObject.put("b", a(paramContext));
      return jSONObject;
    } catch (Exception exception) {
      exception.printStackTrace();
      return jSONObject;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */