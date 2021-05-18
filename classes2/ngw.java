import java.util.EventListener;
import java.util.Iterator;

final class ngw extends ngs<ngh, nga> {
  public ngw(nfu<nga> paramnfu1, nfu<nga> paramnfu2) {
    super(ngh.class, paramnfu1, paramnfu2);
  }
  
  public void a(ngh paramngh) {
    if (c() != null) {
      Iterator<nga> iterator = c().iterator();
      while (iterator.hasNext())
        paramngh.a(iterator.next(), null); 
    } 
    if (e() != null)
      for (nga nga : e())
        paramngh.a(b().b(nga.b()), nga);  
    if (d() != null) {
      Iterator<nga> iterator = d().iterator();
      while (iterator.hasNext())
        paramngh.a(null, iterator.next()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */