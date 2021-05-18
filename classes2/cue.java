import android.content.Intent;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;

public class cue {
  private static final Uri a = Uri.parse("https://plus.google.com/");
  
  private static final Uri b = a.buildUpon().appendPath("circles").appendPath("find").build();
  
  public static Intent a() {
    Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
    intent.setPackage("com.google.android.wearable.app");
    return intent;
  }
  
  public static Intent a(String paramString) {
    Uri uri = Uri.fromParts("package", paramString, null);
    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    intent.setData(uri);
    return intent;
  }
  
  public static Intent a(String paramString1, @Nullable String paramString2) {
    Intent intent = new Intent("android.intent.action.VIEW");
    intent.setData(b(paramString1, paramString2));
    intent.setPackage("com.android.vending");
    intent.addFlags(524288);
    return intent;
  }
  
  private static Uri b(String paramString1, @Nullable String paramString2) {
    Uri.Builder builder = Uri.parse("market://details").buildUpon().appendQueryParameter("id", paramString1);
    if (!TextUtils.isEmpty(paramString2))
      builder.appendQueryParameter("pcampaignid", paramString2); 
    return builder.build();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */