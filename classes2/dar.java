import android.app.Dialog;
import android.content.Context;
import android.support.annotation.MainThread;
import com.google.android.gms.common.api.GoogleApiActivity;

class dar implements Runnable {
  private dar(dap paramdap) {}
  
  @MainThread
  public void run() {
    if (!this.a.a)
      return; 
    if (dap.a(this.a).a()) {
      this.a.d.startActivityForResult(GoogleApiActivity.b((Context)this.a.f(), dap.a(this.a).d(), dap.b(this.a), false), 1);
      return;
    } 
    if (this.a.c.a(dap.a(this.a).c())) {
      this.a.c.a(this.a.f(), this.a.d, dap.a(this.a).c(), 2, this.a);
      return;
    } 
    if (dap.a(this.a).c() == 18) {
      Dialog dialog = this.a.c.a(this.a.f(), this.a);
      this.a.c.a(this.a.f().getApplicationContext(), new das(this, dialog));
      return;
    } 
    this.a.a(dap.a(this.a), dap.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */