import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;

public class aqo {
  public static final String a = aqo.class.getName();
  
  public void a(Activity paramActivity, Uri paramUri) {
    Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
    if (!aqs.c())
      intent.putExtra("output", (Parcelable)paramUri); 
    paramActivity.startActivityForResult(intent, 41);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */