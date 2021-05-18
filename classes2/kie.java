import java.util.ArrayList;
import java.util.Iterator;

public class kie {
  private kif a;
  
  private khx b;
  
  public kie(kif paramkif) {
    this.a = paramkif;
    this.b = miq.C().f().c();
    a();
  }
  
  public void a() {
    if (this.b != null && this.b.b() != null) {
      ArrayList<String> arrayList = new ArrayList();
      Iterator<fvf> iterator = this.b.b().iterator();
      while (iterator.hasNext())
        arrayList.add(((fvf)iterator.next()).d()); 
      this.a.a(arrayList);
    } 
  }
  
  public void a(String paramString) {
    if (this.b != null && this.b.b() != null) {
      ArrayList<String> arrayList = new ArrayList();
      for (fvf fvf : this.b.b()) {
        if (fvf.d().toLowerCase().contains(paramString.toLowerCase()))
          arrayList.add(fvf.d()); 
      } 
      this.a.a(arrayList);
    } 
  }
  
  public void b(String paramString) {
    if (this.b != null && this.b.b() != null)
      for (int i = 0;; i++) {
        if (i < this.b.b().size()) {
          if (((fvf)this.b.b().get(i)).d().equals(paramString)) {
            this.a.a(((fvf)this.b.b().get(i)).d(), i);
            return;
          } 
        } else {
          return;
        } 
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */