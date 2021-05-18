import android.app.Dialog;
import android.content.Intent;
import android.view.View;

class gru implements View.OnClickListener {
  gru(grs paramgrs, int paramInt, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    if (this.a == 4) {
      System.exit(1);
      return;
    } 
    if (this.a == 12) {
      Intent intent = new Intent();
      intent.putExtra("showLogin", false);
      this.c.setResult(3, intent);
      this.c.i.finish();
      return;
    } 
    this.b.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */