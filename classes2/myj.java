import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcelable;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import java.util.ArrayList;

public class myj {
  private static final String a = Environment.getExternalStorageDirectory() + "/SantanderBrasil";
  
  public static void a(Activity paramActivity, String paramString1, String paramString2) {
    try {
      Intent intent = new Intent("android.intent.action.SEND");
      intent.setType("application/pdf");
      intent.putExtra("android.intent.extra.SUBJECT", paramString1);
      intent.putExtra("android.intent.extra.STREAM", (Parcelable)Uri.parse("file://" + a + "/" + paramString2));
      paramActivity.startActivity(Intent.createChooser(intent, "Compartilhar:"));
      return;
    } catch (Exception exception) {
      Log.e("Compartilhar", exception.getMessage(), exception);
      return;
    } 
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, String paramString3) {
    try {
      Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
      intent.setType("text/plain");
      ArrayList<Uri> arrayList1 = new ArrayList();
      arrayList1.add(Uri.parse("file://" + a + "/" + paramString3));
      intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList1);
      intent.setType("image/png");
      intent.putExtra("android.intent.extra.SUBJECT", paramString1);
      Spanned spanned = Html.fromHtml(paramString2);
      ArrayList<CharSequence> arrayList = new ArrayList();
      arrayList.add(spanned.subSequence(0, spanned.length()));
      intent.putExtra("android.intent.extra.TEXT", arrayList);
      paramActivity.startActivityForResult(Intent.createChooser(intent, "Compartilhar:"), 666);
      return;
    } catch (Exception exception) {
      Log.e("Compartilhar", exception.getMessage(), exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */