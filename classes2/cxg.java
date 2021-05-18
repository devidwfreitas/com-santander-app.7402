import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;

final class cxg implements View.OnClickListener {
  cxg(Context paramContext, Intent paramIntent) {}
  
  public void onClick(View paramView) {
    try {
      this.a.startActivity(this.b);
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", (Throwable)activityNotFoundException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */