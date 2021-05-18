import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;

@Deprecated
public class egm extends ContentProvider {
  public void attachInfo(Context paramContext, ProviderInfo paramProviderInfo) {
    super.attachInfo(paramContext, paramProviderInfo);
    if ("com.google.android.gms.measurement.google_measurement_service".equals(paramProviderInfo.authority))
      throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle."); 
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString) {
    return 0;
  }
  
  public String getType(Uri paramUri) {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues) {
    return null;
  }
  
  public boolean onCreate() {
    dlv.a(getContext());
    return false;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2) {
    return null;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString) {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\egm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */