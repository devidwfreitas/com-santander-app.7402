import java.util.HashSet;
import java.util.Iterator;

public final class cra implements cqy, cqz {
  private HashSet<cqy> a = new HashSet<cqy>();
  
  public void a() {
    Iterator<cqy> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cqy)iterator.next()).a(); 
  }
  
  public void a(int paramInt1, int paramInt2) {
    Iterator<cqy> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cqy)iterator.next()).a(paramInt1, paramInt2); 
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3) {
    Iterator<cqy> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cqy)iterator.next()).a(paramInt1, paramInt2, paramInt3); 
  }
  
  public void a(cqy paramcqy) {
    this.a.add(paramcqy);
  }
  
  public void b(int paramInt1, int paramInt2) {
    Iterator<cqy> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cqy)iterator.next()).b(paramInt1, paramInt2); 
  }
  
  public void b(cqy paramcqy) {
    this.a.remove(paramcqy);
  }
  
  public boolean b() {
    return !this.a.isEmpty();
  }
  
  public void c() {
    this.a.clear();
  }
  
  public void c(int paramInt1, int paramInt2) {
    Iterator<cqy> iterator = this.a.iterator();
    while (iterator.hasNext())
      ((cqy)iterator.next()).c(paramInt1, paramInt2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cra.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */