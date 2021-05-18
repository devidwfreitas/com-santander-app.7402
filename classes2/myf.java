import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homenaologada.presentation.HomeActivity;

final class myf implements View.OnClickListener {
  myf(Dialog paramDialog, boolean paramBoolean, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    this.a.dismiss();
    if (this.b) {
      Intent intent = new Intent((Context)this.c, HomeActivity.class);
      intent.putExtra("reopen", true);
      this.c.startActivity(intent);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */