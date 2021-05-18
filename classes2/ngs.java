import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

abstract class ngs<L extends njg, A extends nfy> extends nib<L> {
  private final nfu<A> a;
  
  private List<A> b;
  
  private List<A> c;
  
  private List<A> d;
  
  ngs(Class<L> paramClass, nfu<A> paramnfu1, nfu<A> paramnfu2) {
    super(paramClass);
    this.a = paramnfu1;
    a(paramnfu1, paramnfu2);
  }
  
  private void a(nfu<A> paramnfu1, nfu<A> paramnfu2) {
    if (paramnfu1 != null || paramnfu2 != null) {
      Iterator<A> iterator1;
      if (paramnfu1 == null) {
        iterator1 = paramnfu2.iterator();
        while (true) {
          if (iterator1.hasNext()) {
            h().add(iterator1.next());
            continue;
          } 
          return;
        } 
      } 
      if (paramnfu2 == null) {
        iterator1 = iterator1.iterator();
        while (true) {
          if (iterator1.hasNext()) {
            g().add(iterator1.next());
            continue;
          } 
          return;
        } 
      } 
      for (nfy nfy : iterator1) {
        A a = paramnfu2.b(nfy.b());
        if (a == null) {
          g().add((A)nfy);
          continue;
        } 
        if (!nfy.equals(a))
          i().add(a); 
      } 
      Iterator<A> iterator2 = paramnfu2.iterator();
      while (true) {
        if (iterator2.hasNext()) {
          nfy nfy = (nfy)iterator2.next();
          if (!iterator1.b((A)nfy))
            h().add((A)nfy); 
          continue;
        } 
        return;
      } 
    } 
  }
  
  private List<A> g() {
    if (this.b == null) {
      LinkedList<A> linkedList = new LinkedList();
      this.b = linkedList;
      return linkedList;
    } 
    return this.b;
  }
  
  private List<A> h() {
    if (this.c == null) {
      LinkedList<A> linkedList = new LinkedList();
      this.c = linkedList;
      return linkedList;
    } 
    return this.c;
  }
  
  private List<A> i() {
    if (this.d == null) {
      LinkedList<A> linkedList = new LinkedList();
      this.d = linkedList;
      return linkedList;
    } 
    return this.d;
  }
  
  public final boolean a() {
    return (this.b != null || this.d != null || this.c != null);
  }
  
  protected final nfu<A> b() {
    return this.a;
  }
  
  protected final List<A> c() {
    return this.b;
  }
  
  protected final List<A> d() {
    return this.c;
  }
  
  protected final List<A> e() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */