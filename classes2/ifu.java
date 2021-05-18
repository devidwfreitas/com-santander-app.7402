import android.app.Activity;
import android.content.Context;
import android.content.Intent;

public class ifu implements ift {
  private ifo a;
  
  private Activity b;
  
  public ifu(ifo paramifo, Activity paramActivity) {
    this.a = paramifo;
    this.b = paramActivity;
  }
  
  public void a(Intent paramIntent) {
    iev iev;
    if (paramIntent.hasExtra("action") && paramIntent.hasExtra("content")) {
      iev iev1;
      switch (ifv.a[((iev)paramIntent.getExtras().get("action")).ordinal()]) {
        default:
          return;
        case 1:
          if (paramIntent.getBooleanExtra("kind", false)) {
            this.a.a();
            return;
          } 
          this.a.b();
          return;
        case 2:
          break;
      } 
      if ((new ieu((Context)this.b)).a("")) {
        iev1 = iev.DISABLE;
      } else {
        iev1 = iev.ENABLE;
      } 
      if (paramIntent.getBooleanExtra("kind", false)) {
        this.a.a(paramIntent.getExtras().getString("content"), iev1);
        return;
      } 
      this.a.b(paramIntent.getExtras().getString("content"), iev1);
      return;
    } 
    if ((new ieu((Context)this.b)).a("")) {
      iev = iev.DISABLE;
    } else {
      iev = iev.ENABLE;
    } 
    this.a.a("", iev);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ifu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */