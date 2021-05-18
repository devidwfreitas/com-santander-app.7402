import java.text.DecimalFormat;

public class chi implements chl {
  protected DecimalFormat a;
  
  protected int b = 0;
  
  public chi(int paramInt) {
    this.b = paramInt;
    StringBuffer stringBuffer = new StringBuffer();
    while (i < paramInt) {
      if (i == 0)
        stringBuffer.append("."); 
      stringBuffer.append("0");
      i++;
    } 
    this.a = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
  }
  
  public int a() {
    return this.b;
  }
  
  public String a(float paramFloat, cfj paramcfj) {
    return this.a.format(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */