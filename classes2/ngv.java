import java.util.EventListener;
import java.util.Iterator;

final class ngv extends ngs<ngg, nfz> {
  public ngv(nfu<nfz> paramnfu1, nfu<nfz> paramnfu2) {
    super(ngg.class, paramnfu1, paramnfu2);
  }
  
  public void a(ngg paramngg) {
    if (c() != null) {
      Iterator<nfz> iterator = c().iterator();
      while (iterator.hasNext())
        paramngg.a(iterator.next(), null); 
    } 
    if (e() != null)
      for (nfz nfz : e())
        paramngg.a(b().b(nfz.b()), nfz);  
    if (d() != null) {
      Iterator<nfz> iterator = d().iterator();
      while (iterator.hasNext())
        paramngg.a(null, iterator.next()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */