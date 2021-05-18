import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.Map;

public final class eq {
  static final String a = "al_applink_data";
  
  static final String b = "extras";
  
  static final String c = "target_url";
  
  public static Uri a(Context paramContext, Intent paramIntent) {
    Uri uri2 = null;
    Bundle bundle = a(paramIntent);
    Uri uri1 = uri2;
    if (bundle != null) {
      String str = bundle.getString("target_url");
      uri1 = uri2;
      if (str != null) {
        fc.a(paramContext, "al_nav_in", paramIntent, (Map<String, String>)null);
        uri1 = Uri.parse(str);
      } 
    } 
    return uri1;
  }
  
  public static Bundle a(Intent paramIntent) {
    return paramIntent.getBundleExtra("al_applink_data");
  }
  
  public static Bundle b(Intent paramIntent) {
    Bundle bundle = a(paramIntent);
    return (bundle == null) ? null : bundle.getBundle("extras");
  }
  
  public static Uri c(Intent paramIntent) {
    Bundle bundle = a(paramIntent);
    if (bundle != null) {
      String str = bundle.getString("target_url");
      if (str != null)
        return Uri.parse(str); 
    } 
    return paramIntent.getData();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */