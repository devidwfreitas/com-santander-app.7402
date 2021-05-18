import android.app.Activity;
import android.content.Intent;

class bsu implements bsz {
  private final Activity a;
  
  bsu(Activity paramActivity) {
    bqx.a(paramActivity, "activity");
    this.a = paramActivity;
  }
  
  public Activity a() {
    return this.a;
  }
  
  public void a(Intent paramIntent, int paramInt) {
    this.a.startActivityForResult(paramIntent, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */