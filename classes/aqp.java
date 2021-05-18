import android.app.Activity;
import android.content.Intent;

public class aqp {
  public void a(Activity paramActivity) {
    Intent intent = new Intent();
    if (aqs.b()) {
      intent.setAction("android.intent.action.OPEN_DOCUMENT");
      intent.addCategory("android.intent.category.OPENABLE");
      intent.setType("application/*");
      intent.putExtra("android.intent.extra.MIME_TYPES", aps.bN);
    } else {
      intent.setAction("android.intent.action.GET_CONTENT");
      intent.setType("application/*");
    } 
    paramActivity.startActivityForResult(intent, 42);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */