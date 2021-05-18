import android.content.Intent;
import android.net.Uri;

public class cnd {
  private static final Uri a = Uri.parse("http://plus.google.com/");
  
  private static final Uri b = a.buildUpon().appendPath("circles").appendPath("find").build();
  
  public static Intent a() {
    return new Intent("android.settings.DATE_SETTINGS");
  }
  
  public static Intent a(String paramString) {
    Uri uri = Uri.fromParts("package", paramString, null);
    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    intent.setData(uri);
    return intent;
  }
  
  public static Intent b(String paramString) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setData(d(paramString));
    intent.setPackage("com.android.vending");
    intent.addFlags(524288);
    return intent;
  }
  
  public static Intent c(String paramString) {
    Uri uri = Uri.parse("bazaar://search?q=pname:" + paramString);
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setData(uri);
    intent.setFlags(524288);
    return intent;
  }
  
  private static Uri d(String paramString) {
    return Uri.parse("market://details").buildUpon().appendQueryParameter("id", paramString).build();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cnd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */