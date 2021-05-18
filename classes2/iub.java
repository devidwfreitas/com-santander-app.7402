import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class iub implements View.OnClickListener {
  public iub(HomeActivity paramHomeActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent();
    intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setData(Uri.parse("package:" + this.a.getPackageName()));
    intent.addFlags(268435456);
    intent.addFlags(1073741824);
    intent.addFlags(8388608);
    this.a.startActivity(intent);
    System.exit(1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */