import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.view.View;
import com.santander.app.homenaologada.presentation.HomeActivity;

final class mxq implements View.OnClickListener {
  mxq(boolean paramBoolean, Activity paramActivity, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    if (this.a) {
      Intent intent1 = new Intent((Context)this.b, HomeActivity.class);
      intent1.putExtra("reopen", true);
      miq.C().o();
      jcd.a();
      this.c.cancel();
      this.b.startActivity(intent1);
      return;
    } 
    miq.C().o();
    jcd.a();
    Intent intent = new Intent((Context)this.b, HomeActivity.class);
    intent.putExtra("reopen", true);
    this.b.startActivity(intent);
    this.c.cancel();
    intent = new Intent("android.intent.action.MAIN");
    intent.addCategory("android.intent.category.HOME");
    intent.addFlags(268435456);
    intent.addFlags(67108864);
    intent.addFlags(8388608);
    this.b.moveTaskToBack(true);
    Process.killProcess(Process.myPid());
    System.exit(1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */