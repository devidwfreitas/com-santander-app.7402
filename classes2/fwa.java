import java.io.Serializable;
import java.util.Vector;

public class fwa extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Vector<fwg> b;
  
  private Vector<fwf> c;
  
  public fwg a(String paramString) {
    fwg fwg;
    String str1 = null;
    String str2 = paramString.trim();
    int i = 0;
    paramString = str1;
    while (i < this.b.size()) {
      if (str2.equals(((fwg)this.b.get(i)).b().trim()))
        fwg = this.b.get(i); 
      i++;
    } 
    return fwg;
  }
  
  public Vector<fwg> a() {
    return this.b;
  }
  
  public void a(Vector<fwg> paramVector) {
    this.b = paramVector;
  }
  
  public Vector<fwf> b() {
    return this.c;
  }
  
  public void b(Vector<fwf> paramVector) {
    this.c = paramVector;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fwa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */