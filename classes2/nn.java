import android.app.Activity;
import android.content.Context;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;

class nn implements View.OnClickListener {
  nn(nl paramnl) {}
  
  public void onClick(View paramView) {
    if (ContextCompat.checkSelfPermission((Context)this.a.e(), "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)this.a.e(), new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 99);
      return;
    } 
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */