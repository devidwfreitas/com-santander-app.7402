import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import java.util.List;

public class fdp implements fco {
  private fco b;
  
  public fdp(DecoratedBarcodeView paramDecoratedBarcodeView, fco paramfco) {
    this.b = paramfco;
  }
  
  public void a(fcq paramfcq) {
    this.b.a(paramfcq);
  }
  
  public void a(List<eqo> paramList) {
    for (eqo eqo : paramList)
      DecoratedBarcodeView.a(this.a).a(eqo); 
    this.b.a(paramList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */