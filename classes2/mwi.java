import android.view.View;
import com.santander.app.transfergolden.service.TransferGoldenService;

public class mwi implements View.OnLayoutChangeListener {
  public mwi(TransferGoldenService paramTransferGoldenService) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8) {
    paramView.removeOnLayoutChangeListener(this);
    TransferGoldenService.c(this.a).start();
    TransferGoldenService.d(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */