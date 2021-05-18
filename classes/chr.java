import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import java.text.DecimalFormat;

public class chr implements chn {
  private boolean a;
  
  private String b;
  
  private DecimalFormat c;
  
  public chr(boolean paramBoolean, String paramString, int paramInt) {
    this.a = paramBoolean;
    this.b = paramString;
    StringBuffer stringBuffer = new StringBuffer();
    int i;
    for (i = 0; i < paramInt; i++) {
      if (i == 0)
        stringBuffer.append("."); 
      stringBuffer.append("0");
    } 
    this.c = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
  }
  
  public String a(float paramFloat, Entry paramEntry, int paramInt, clh paramclh) {
    if (!this.a && paramEntry instanceof BarEntry) {
      BarEntry barEntry = (BarEntry)paramEntry;
      float[] arrayOfFloat = barEntry.b();
      if (arrayOfFloat != null)
        return (arrayOfFloat[arrayOfFloat.length - 1] == paramFloat) ? (this.c.format(barEntry.c()) + this.b) : ""; 
    } 
    return this.c.format(paramFloat) + this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */