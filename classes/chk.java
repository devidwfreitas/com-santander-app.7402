import com.github.mikephil.charting.data.Entry;
import java.text.DecimalFormat;

public class chk implements chn {
  protected DecimalFormat a;
  
  protected int b;
  
  public chk(int paramInt) {
    a(paramInt);
  }
  
  public int a() {
    return this.b;
  }
  
  public String a(float paramFloat, Entry paramEntry, int paramInt, clh paramclh) {
    return this.a.format(paramFloat);
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0; i < paramInt; i++) {
      if (i == 0)
        stringBuffer.append("."); 
      stringBuffer.append("0");
    } 
    this.a = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */