import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

final class mxz implements View.OnClickListener {
  mxz(Dialog paramDialog, boolean paramBoolean, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    this.a.cancel();
    if (this.b) {
      Intent intent = new Intent((Context)this.c, HomeLogadaActivity.class);
      intent.setFlags(67108864);
      this.c.startActivity(intent);
      return;
    } 
    if (mxn.b != null) {
      mxn.b.finish();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */