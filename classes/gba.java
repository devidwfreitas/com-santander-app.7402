import org.simpleframework.xml.Element;

@Element(required = false)
public enum gba {
  outra, real;
  
  static {
    outra = new gba("outra", 1);
    $VALUES = new gba[] { real, outra };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */