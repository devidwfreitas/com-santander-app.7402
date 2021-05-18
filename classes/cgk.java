import java.util.Iterator;
import java.util.List;

public class cgk extends cgg<cim> {
  public cgk() {}
  
  public cgk(List<cim> paramList) {
    super(paramList);
  }
  
  public cgk(cim... paramVarArgs) {
    super(paramVarArgs);
  }
  
  public void a(float paramFloat) {
    Iterator<cim> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cim)iterator.next()).a(paramFloat); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */