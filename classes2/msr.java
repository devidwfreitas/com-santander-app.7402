import android.view.View;
import com.santander.app.transfergolden.presentation.ComprovanteTransferGoldenActivity;

public class msr implements View.OnLayoutChangeListener {
  public msr(ComprovanteTransferGoldenActivity paramComprovanteTransferGoldenActivity) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8) {
    ComprovanteTransferGoldenActivity.a(this.a).removeOnLayoutChangeListener(this);
    this.a.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\msr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */