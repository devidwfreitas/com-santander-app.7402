import java.io.Serializable;

public class hlj implements Serializable {
  @eks(a = "value")
  protected String a;
  
  @eks(a = "quantity")
  private Object b;
  
  @eks(a = "quantityObject")
  private hlk c;
  
  Object a() {
    if (this.b instanceof String)
      return String.valueOf(this.b); 
    if (this.c == null) {
      ejm ejm = new ejm();
      this.c = (hlk)ejm.a(ejm.b(this.b), hlk.class);
    } 
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hlj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */