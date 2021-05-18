import android.graphics.Typeface;
import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class cgo<T extends cio<? extends Entry>> {
  protected float a = -3.4028235E38F;
  
  protected float b = Float.MAX_VALUE;
  
  protected float c = -3.4028235E38F;
  
  protected float d = Float.MAX_VALUE;
  
  protected float e = -3.4028235E38F;
  
  protected float f = Float.MAX_VALUE;
  
  protected float g = -3.4028235E38F;
  
  protected float h = Float.MAX_VALUE;
  
  protected List<T> i = new ArrayList<T>();
  
  public cgo() {}
  
  public cgo(List<T> paramList) {
    b();
  }
  
  public cgo(T... paramVarArgs) {
    b();
  }
  
  private List<T> a(T[] paramArrayOfT) {
    ArrayList<T> arrayList = new ArrayList();
    int j = paramArrayOfT.length;
    for (int i = 0; i < j; i++)
      arrayList.add(paramArrayOfT[i]); 
    return arrayList;
  }
  
  public float a(cgc paramcgc) {
    return (paramcgc == cgc.LEFT) ? ((this.f == Float.MAX_VALUE) ? this.h : this.f) : ((this.h == Float.MAX_VALUE) ? this.f : this.h);
  }
  
  protected int a(List<T> paramList, String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      int i;
      for (i = 0; i < paramList.size(); i++) {
        if (paramString.equalsIgnoreCase(((cio)paramList.get(i)).p()))
          return i; 
      } 
    } else {
      int i = 0;
      while (i < paramList.size()) {
        int j = i;
        if (!paramString.equals(((cio)paramList.get(i)).p())) {
          i++;
          continue;
        } 
        return j;
      } 
    } 
    return -1;
  }
  
  public T a(int paramInt) {
    return (T)((this.i == null || paramInt < 0 || paramInt >= this.i.size()) ? null : (cio)this.i.get(paramInt));
  }
  
  public T a(Entry paramEntry) {
    if (paramEntry == null)
      return null; 
    for (int i = 0; i < this.i.size(); i++) {
      cio<Entry> cio = (cio)this.i.get(i);
      int j = 0;
      while (j < cio.I()) {
        cio<Entry> cio1 = cio;
        if (!paramEntry.a(cio.b(paramEntry.k(), paramEntry.c()))) {
          j++;
          continue;
        } 
        return (T)cio1;
      } 
    } 
    return null;
  }
  
  public T a(String paramString, boolean paramBoolean) {
    int i = a(this.i, paramString, paramBoolean);
    return (T)((i < 0 || i >= this.i.size()) ? null : (cio)this.i.get(i));
  }
  
  protected T a(List<T> paramList) {
    for (cio cio : paramList) {
      if (cio.C() == cgc.LEFT)
        return (T)cio; 
    } 
    return null;
  }
  
  public Entry a(chv paramchv) {
    return (paramchv.f() >= this.i.size()) ? null : ((cio<Entry>)this.i.get(paramchv.f())).b(paramchv.a(), paramchv.b());
  }
  
  public void a(Typeface paramTypeface) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).a(paramTypeface); 
  }
  
  public void a(chn paramchn) {
    if (paramchn != null) {
      Iterator<T> iterator = this.i.iterator();
      while (true) {
        if (iterator.hasNext()) {
          ((cio)iterator.next()).a(paramchn);
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void a(T paramT) {
    if (paramT == null)
      return; 
    c(paramT);
    this.i.add(paramT);
  }
  
  public void a(Entry paramEntry, int paramInt) {
    if (this.i.size() > paramInt && paramInt >= 0) {
      cio<Entry> cio = (cio)this.i.get(paramInt);
      if (!cio.f(paramEntry))
        return; 
      a(paramEntry, cio.C());
      return;
    } 
    Log.e("addEntry", "Cannot add Entry because dataSetIndex too high or too low.");
  }
  
  protected void a(Entry paramEntry, cgc paramcgc) {
    if (this.a < paramEntry.c())
      this.a = paramEntry.c(); 
    if (this.b > paramEntry.c())
      this.b = paramEntry.c(); 
    if (this.c < paramEntry.k())
      this.c = paramEntry.k(); 
    if (this.d > paramEntry.k())
      this.d = paramEntry.k(); 
    if (paramcgc == cgc.LEFT) {
      if (this.e < paramEntry.c())
        this.e = paramEntry.c(); 
      if (this.f > paramEntry.c())
        this.f = paramEntry.c(); 
      return;
    } 
    if (this.g < paramEntry.c())
      this.g = paramEntry.c(); 
    if (this.h > paramEntry.c()) {
      this.h = paramEntry.c();
      return;
    } 
  }
  
  public void a(boolean paramBoolean) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).b(paramBoolean); 
  }
  
  public boolean a(float paramFloat, int paramInt) {
    if (paramInt >= this.i.size())
      return false; 
    Entry entry = (Entry)((cio<Object>)this.i.get(paramInt)).b(paramFloat, Float.NaN);
    return (entry == null) ? false : b(entry, paramInt);
  }
  
  public float b(cgc paramcgc) {
    return (paramcgc == cgc.LEFT) ? ((this.e == -3.4028235E38F) ? this.g : this.e) : ((this.g == -3.4028235E38F) ? this.e : this.g);
  }
  
  public T b(List<T> paramList) {
    for (cio cio : paramList) {
      if (cio.C() == cgc.RIGHT)
        return (T)cio; 
    } 
    return null;
  }
  
  public void b() {
    c();
  }
  
  public void b(float paramFloat) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).b(paramFloat); 
  }
  
  public void b(float paramFloat1, float paramFloat2) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).a(paramFloat1, paramFloat2); 
    c();
  }
  
  public void b(boolean paramBoolean) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).a(paramBoolean); 
  }
  
  public boolean b(int paramInt) {
    return (paramInt >= this.i.size() || paramInt < 0) ? false : b(this.i.get(paramInt));
  }
  
  public boolean b(T paramT) {
    if (paramT == null)
      return false; 
    boolean bool2 = this.i.remove(paramT);
    boolean bool1 = bool2;
    if (bool2) {
      c();
      return bool2;
    } 
    return bool1;
  }
  
  public boolean b(Entry paramEntry, int paramInt) {
    if (paramEntry == null || paramInt >= this.i.size())
      return false; 
    cio<Entry> cio = (cio)this.i.get(paramInt);
    if (cio != null) {
      boolean bool2 = cio.g(paramEntry);
      boolean bool1 = bool2;
      if (bool2) {
        c();
        return bool2;
      } 
      return bool1;
    } 
    return false;
  }
  
  protected void c() {
    if (this.i != null) {
      this.a = -3.4028235E38F;
      this.b = Float.MAX_VALUE;
      this.c = -3.4028235E38F;
      this.d = Float.MAX_VALUE;
      Iterator<T> iterator = this.i.iterator();
      while (iterator.hasNext())
        c(iterator.next()); 
      this.e = -3.4028235E38F;
      this.f = Float.MAX_VALUE;
      this.g = -3.4028235E38F;
      this.h = Float.MAX_VALUE;
      iterator = (Iterator<T>)a(this.i);
      if (iterator != null) {
        this.e = iterator.M();
        this.f = iterator.L();
        for (cio cio : this.i) {
          if (cio.C() == cgc.LEFT) {
            if (cio.L() < this.f)
              this.f = cio.L(); 
            if (cio.M() > this.e)
              this.e = cio.M(); 
          } 
        } 
      } 
      iterator = (Iterator<T>)b(this.i);
      if (iterator != null) {
        this.g = iterator.M();
        this.h = iterator.L();
        iterator = this.i.iterator();
        while (true) {
          if (iterator.hasNext()) {
            cio cio = (cio)iterator.next();
            if (cio.C() == cgc.RIGHT) {
              if (cio.L() < this.h)
                this.h = cio.L(); 
              if (cio.M() > this.g)
                this.g = cio.M(); 
            } 
            continue;
          } 
          return;
        } 
      } 
    } 
  }
  
  public void c(int paramInt) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).h(paramInt); 
  }
  
  protected void c(T paramT) {
    if (this.a < paramT.M())
      this.a = paramT.M(); 
    if (this.b > paramT.L())
      this.b = paramT.L(); 
    if (this.c < paramT.O())
      this.c = paramT.O(); 
    if (this.d > paramT.N())
      this.d = paramT.N(); 
    if (paramT.C() == cgc.LEFT) {
      if (this.e < paramT.M())
        this.e = paramT.M(); 
      if (this.f > paramT.L())
        this.f = paramT.L(); 
      return;
    } 
    if (this.g < paramT.M())
      this.g = paramT.M(); 
    if (this.h > paramT.L()) {
      this.h = paramT.L();
      return;
    } 
  }
  
  public void c(List<Integer> paramList) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((cio)iterator.next()).b(paramList); 
  }
  
  public int d() {
    return (this.i == null) ? 0 : this.i.size();
  }
  
  public int d(T paramT) {
    return this.i.indexOf(paramT);
  }
  
  public float e() {
    return this.b;
  }
  
  public boolean e(T paramT) {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext()) {
      if (((cio)iterator.next()).equals(paramT))
        return true; 
    } 
    return false;
  }
  
  public float f() {
    return this.a;
  }
  
  public float g() {
    return this.d;
  }
  
  public float h() {
    return this.c;
  }
  
  public List<T> i() {
    return this.i;
  }
  
  public String[] j() {
    String[] arrayOfString = new String[this.i.size()];
    for (int i = 0; i < this.i.size(); i++)
      arrayOfString[i] = ((cio)this.i.get(i)).p(); 
    return arrayOfString;
  }
  
  public int[] k() {
    boolean bool = false;
    if (this.i == null)
      return null; 
    int i = 0;
    int j = 0;
    while (i < this.i.size()) {
      j += ((cio)this.i.get(i)).l().size();
      i++;
    } 
    int[] arrayOfInt = new int[j];
    j = 0;
    for (i = bool; i < this.i.size(); i++) {
      Iterator<Integer> iterator = ((cio)this.i.get(i)).l().iterator();
      while (iterator.hasNext()) {
        arrayOfInt[j] = ((Integer)iterator.next()).intValue();
        j++;
      } 
    } 
    return arrayOfInt;
  }
  
  public boolean l() {
    Iterator<T> iterator = this.i.iterator();
    while (iterator.hasNext()) {
      if (!((cio)iterator.next()).q())
        return false; 
    } 
    return true;
  }
  
  public void m() {
    if (this.i != null)
      this.i.clear(); 
    b();
  }
  
  public int n() {
    Iterator<T> iterator = this.i.iterator();
    int i;
    for (i = 0; iterator.hasNext(); i = ((cio)iterator.next()).I() + i);
    return i;
  }
  
  public T o() {
    if (this.i == null || this.i.isEmpty())
      return null; 
    cio cio = (cio)this.i.get(0);
    Iterator<T> iterator = this.i.iterator();
    while (true) {
      cio cio1 = cio;
      if (iterator.hasNext()) {
        cio1 = (cio)iterator.next();
        if (cio1.I() > cio.I())
          cio = cio1; 
        continue;
      } 
      return (T)cio1;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */