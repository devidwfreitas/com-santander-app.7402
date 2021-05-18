import android.content.Intent;
import android.net.Uri;

public class myk {
  public Intent a(String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString1, String paramString2) {
    Intent intent = new Intent("android.intent.action.SEND");
    intent.setData(Uri.parse("mailto:"));
    intent.putExtra("android.intent.extra.EMAIL", paramArrayOfString1);
    intent.putExtra("android.intent.extra.CC", paramArrayOfString2);
    intent.putExtra("android.intent.extra.SUBJECT", paramString1);
    intent.putExtra("android.intent.extra.TEXT", paramString2);
    intent.setType("message/rfc822");
    return intent;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */