import java.io.InputStream;
import org.xml.sax.Attributes;

public abstract class jwv {
  protected InputStream a;
  
  public jwv(InputStream paramInputStream) {
    this.a = paramInputStream;
  }
  
  public double a(Attributes paramAttributes, String paramString, double paramDouble) {
    String str = paramAttributes.getValue(paramString);
    if (str == null)
      return paramDouble; 
    try {
      return Double.parseDouble(str);
    } catch (Exception exception) {
      return paramDouble;
    } 
  }
  
  public float a(Attributes paramAttributes, String paramString, float paramFloat) {
    String str = paramAttributes.getValue(paramString);
    if (str == null)
      return paramFloat; 
    try {
      return Float.parseFloat(str);
    } catch (Exception exception) {
      return paramFloat;
    } 
  }
  
  public int a(Attributes paramAttributes, String paramString, int paramInt) {
    String str = paramAttributes.getValue(paramString);
    if (str == null)
      return paramInt; 
    try {
      return Integer.parseInt(str);
    } catch (Exception exception) {
      return paramInt;
    } 
  }
  
  public String a(Attributes paramAttributes, String paramString) {
    paramString = paramAttributes.getValue(paramString);
    String str = paramString;
    if (paramString == null)
      str = ""; 
    return str;
  }
  
  public boolean a(String paramString) {
    return paramString.equalsIgnoreCase("true");
  }
  
  public boolean a(Attributes paramAttributes, String paramString, boolean paramBoolean) {
    String str = paramAttributes.getValue(paramString);
    if (str == null)
      return paramBoolean; 
    try {
      return a(str);
    } catch (Exception exception) {
      return paramBoolean;
    } 
  }
  
  public abstract void b();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jwv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */