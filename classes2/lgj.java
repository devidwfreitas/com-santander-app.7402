import com.santander.app.seguros.ui.consultative.activities.BillingActivity;

public class lgj implements Runnable {
  public lgj(BillingActivity paramBillingActivity) {}
  
  public void run() {
    BillingActivity.b(this.a).smoothScrollTo(0, BillingActivity.a(this.a).getTop());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lgj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */