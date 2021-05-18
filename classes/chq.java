import com.github.mikephil.charting.data.Entry;
import java.text.DecimalFormat;

public class chq implements chl, chn {
  protected DecimalFormat a = new DecimalFormat("###,###,##0.0");
  
  public chq() {}
  
  public chq(DecimalFormat paramDecimalFormat) {}
  
  public int a() {
    return 1;
  }
  
  public String a(float paramFloat, cfj paramcfj) {
    return this.a.format(paramFloat) + " %";
  }
  
  public String a(float paramFloat, Entry paramEntry, int paramInt, clh paramclh) {
    return this.a.format(paramFloat) + " %";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */