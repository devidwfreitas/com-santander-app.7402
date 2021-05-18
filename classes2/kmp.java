import android.app.Activity;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.santander.app.MinhaConta;
import com.santander.app.segundaviacomprovantes.presentation.ComprovanteActivity;

public class kmp implements View.OnClickListener {
  public kmp(ComprovanteActivity paramComprovanteActivity) {}
  
  public void onClick(View paramView) {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission(MinhaConta.b(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
        ActivityCompat.requestPermissions((Activity)this.a, new String[] { "android.permission.READ_EXTERNAL_STORAGE" }, 8);
        return;
      } 
      ComprovanteActivity.a(this.a).b();
      return;
    } 
    ComprovanteActivity.a(this.a).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */