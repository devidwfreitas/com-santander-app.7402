import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import android.view.View;

final class myc implements View.OnClickListener {
  myc(Activity paramActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    try {
      (new myd(this)).execute((Object[])new Void[0]);
      return;
    } catch (Exception exception) {
      Log.e("DialogUtil", "Erro ao tentar invalidar sessão.", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */