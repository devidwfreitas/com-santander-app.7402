import java.io.Serializable;
import java.util.Vector;

public class ftc extends fvu implements Serializable {
  private static final long a = 1L;
  
  private Vector<ftb> b;
  
  private String c;
  
  public ftc() {
    a(new Vector<ftb>());
  }
  
  public ftb a(ftl paramftl) {
    ftb ftb2 = null;
    ftb ftb1 = null;
    if (this.b.size() > 0) {
      int i = 0;
      while (true) {
        ftb2 = ftb1;
        if (i < this.b.size()) {
          if (((ftb)this.b.get(i)).a().indexOf(paramftl) != -1)
            ftb1 = this.b.get(i); 
          i++;
          continue;
        } 
        break;
      } 
    } 
    return ftb2;
  }
  
  public Vector<ftb> a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(Vector<ftb> paramVector) {
    this.b = paramVector;
  }
  
  public String b() {
    return this.c;
  }
  
  public Vector<ftl> c() {
    Vector<ftl> vector = new Vector();
    if (this.b.size() > 0)
      for (int i = 0; i < this.b.size(); i++) {
        Vector<ftl> vector1 = ((ftb)this.b.get(i)).a();
        for (ftl ftl : vector1) {
          ftl.i(((ftb)this.b.get(i)).j());
          ftl.j(((ftb)this.b.get(i)).k());
        } 
        vector.addAll(vector1);
      }  
    return vector;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ftc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */