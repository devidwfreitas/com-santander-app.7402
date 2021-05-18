import android.app.Activity;
import android.content.Intent;

public class ifx implements ifw {
  private ifp a;
  
  private ifb b;
  
  public ifx(ifp paramifp, Activity paramActivity) {
    this.a = paramifp;
    this.b = new ifc(this, paramActivity);
  }
  
  public void a(Intent paramIntent) {
    if (paramIntent.hasExtra("action")) {
      switch (ify.a[((iev)paramIntent.getExtras().get("action")).ordinal()]) {
        default:
          return;
        case 1:
          this.a.b();
          return;
        case 2:
          break;
      } 
      this.a.c();
      return;
    } 
    this.a.a();
  }
  
  public void a(iev paramiev, String paramString, boolean paramBoolean) {
    this.a.a(paramiev, paramString, paramBoolean);
  }
  
  public void a(boolean paramBoolean) {
    this.b.a(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ifx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */