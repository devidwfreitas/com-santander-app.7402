import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;

class kjw implements View.OnClickListener {
  kjw(kjo paramkjo) {}
  
  public void onClick(View paramView) {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)kjo.a(this.a).a(), "android.permission.READ_CONTACTS") != 0) {
        ActivityCompat.requestPermissions((Activity)kjo.a(this.a).a(), new String[] { "android.permission.READ_CONTACTS" }, 3);
        return;
      } 
      kjo.a(this.a).i();
      return;
    } 
    kjo.a(this.a).i();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */