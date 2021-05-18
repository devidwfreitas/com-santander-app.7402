import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ejw extends ejz implements Iterable<ejz> {
  private final List<ejz> a = new ArrayList<ejz>();
  
  ejw a() {
    ejw ejw1 = new ejw();
    Iterator<ejz> iterator = this.a.iterator();
    while (iterator.hasNext())
      ejw1.a(((ejz)iterator.next()).o()); 
    return ejw1;
  }
  
  public ejz a(int paramInt) {
    return this.a.remove(paramInt);
  }
  
  public ejz a(int paramInt, ejz paramejz) {
    return this.a.set(paramInt, paramejz);
  }
  
  public void a(ejw paramejw) {
    this.a.addAll(paramejw.a);
  }
  
  public void a(ejz paramejz) {
    ekb ekb;
    ejz ejz1 = paramejz;
    if (paramejz == null)
      ekb = ekb.a; 
    this.a.add(ekb);
  }
  
  public void a(Boolean paramBoolean) {
    ekb ekb;
    ekf ekf;
    List<ejz> list = this.a;
    if (paramBoolean == null) {
      ekb = ekb.a;
    } else {
      ekf = new ekf((Boolean)ekb);
    } 
    list.add(ekf);
  }
  
  public void a(Character paramCharacter) {
    ekb ekb;
    ekf ekf;
    List<ejz> list = this.a;
    if (paramCharacter == null) {
      ekb = ekb.a;
    } else {
      ekf = new ekf((Character)ekb);
    } 
    list.add(ekf);
  }
  
  public void a(Number paramNumber) {
    ekb ekb;
    ekf ekf;
    List<ejz> list = this.a;
    if (paramNumber == null) {
      ekb = ekb.a;
    } else {
      ekf = new ekf((Number)ekb);
    } 
    list.add(ekf);
  }
  
  public void a(String paramString) {
    ekb ekb;
    ekf ekf;
    List<ejz> list = this.a;
    if (paramString == null) {
      ekb = ekb.a;
    } else {
      ekf = new ekf((String)ekb);
    } 
    list.add(ekf);
  }
  
  public int b() {
    return this.a.size();
  }
  
  public ejz b(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public boolean b(ejz paramejz) {
    return this.a.remove(paramejz);
  }
  
  public Number c() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).c(); 
    throw new IllegalStateException();
  }
  
  public boolean c(ejz paramejz) {
    return this.a.contains(paramejz);
  }
  
  public String d() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).d(); 
    throw new IllegalStateException();
  }
  
  public double e() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).e(); 
    throw new IllegalStateException();
  }
  
  public boolean equals(Object paramObject) {
    return (paramObject == this || (paramObject instanceof ejw && ((ejw)paramObject).a.equals(this.a)));
  }
  
  public BigDecimal f() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).f(); 
    throw new IllegalStateException();
  }
  
  public BigInteger g() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).g(); 
    throw new IllegalStateException();
  }
  
  public float h() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).h(); 
    throw new IllegalStateException();
  }
  
  public int hashCode() {
    return this.a.hashCode();
  }
  
  public long i() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).i(); 
    throw new IllegalStateException();
  }
  
  public Iterator<ejz> iterator() {
    return this.a.iterator();
  }
  
  public int j() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).j(); 
    throw new IllegalStateException();
  }
  
  public byte k() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).k(); 
    throw new IllegalStateException();
  }
  
  public char l() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).l(); 
    throw new IllegalStateException();
  }
  
  public short m() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).m(); 
    throw new IllegalStateException();
  }
  
  public boolean n() {
    if (this.a.size() == 1)
      return ((ejz)this.a.get(0)).n(); 
    throw new IllegalStateException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */