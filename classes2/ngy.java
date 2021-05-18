import java.util.EventListener;
import java.util.Iterator;

final class ngy extends ngs<ngj, ngc> {
  public ngy(nfu<ngc> paramnfu1, nfu<ngc> paramnfu2) {
    super(ngj.class, paramnfu1, paramnfu2);
  }
  
  public void a(ngj paramngj) {
    if (c() != null) {
      Iterator<ngc> iterator = c().iterator();
      while (iterator.hasNext())
        paramngj.a(iterator.next(), null); 
    } 
    if (e() != null)
      for (ngc ngc : e())
        paramngj.a(b().b(ngc.b()), ngc);  
    if (d() != null) {
      Iterator<ngc> iterator = d().iterator();
      while (iterator.hasNext())
        paramngj.a(null, iterator.next()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */