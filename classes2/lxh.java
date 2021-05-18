import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

class lxh implements View.OnClickListener {
  lxh(lxc paramlxc) {}
  
  public void onClick(View paramView) {
    lxc.c(this.a);
    Intent intent = new Intent((Context)lxc.a(this.a), ScanDocumentActivity.class);
    this.a.startActivityForResult(intent, 5698);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */