import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

public class lsd implements Runnable {
  public lsd(SinisterDetailActivity paramSinisterDetailActivity) {}
  
  public void run() {
    SinisterDetailActivity.h(this.a).addOnPageChangeListener(SinisterDetailActivity.g(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */