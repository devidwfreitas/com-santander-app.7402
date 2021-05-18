import android.app.Activity;
import android.content.Intent;

public class aqq {
  public void a(Activity paramActivity) {
    Intent intent = new Intent("android.intent.action.GET_CONTENT");
    intent.setType("image/*");
    paramActivity.startActivityForResult(intent, 43);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */