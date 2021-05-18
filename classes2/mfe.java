import com.santander.app.seguros.ui.widgets.cancellation.CancelSeekBar;

public class mfe implements mcb {
  public mfe(CancelSeekBar paramCancelSeekBar) {}
  
  public void a(Boolean paramBoolean) {
    CancelSeekBar.c(this.a, false);
  }
  
  public void a(mca parammca) {
    if (parammca == mca.LEFT) {
      CancelSeekBar.a(this.a, true);
      return;
    } 
    if (parammca == mca.RIGHT) {
      CancelSeekBar.b(this.a, true);
      return;
    } 
    CancelSeekBar.c(this.a, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */