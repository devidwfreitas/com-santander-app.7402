import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class dqz<M extends dqy<M>, T> {
  protected final int a;
  
  protected final Class<T> b;
  
  public final int c;
  
  protected final boolean d;
  
  private dqz(int paramInt1, Class<T> paramClass, int paramInt2, boolean paramBoolean) {
    this.a = paramInt1;
    this.b = paramClass;
    this.c = paramInt2;
    this.d = paramBoolean;
  }
  
  public static <M extends dqy<M>, T extends dre> dqz<M, T> a(int paramInt, Class<T> paramClass, long paramLong) {
    return new dqz<M, T>(paramInt, paramClass, (int)paramLong, false);
  }
  
  private T b(List<drg> paramList) {
    boolean bool = false;
    ArrayList<Object> arrayList = new ArrayList();
    int i;
    for (i = 0; i < paramList.size(); i++) {
      drg drg = paramList.get(i);
      if (drg.b.length != 0)
        a(drg, arrayList); 
    } 
    int j = arrayList.size();
    if (j == 0)
      return null; 
    T t = this.b.cast(Array.newInstance(this.b.getComponentType(), j));
    i = bool;
    while (true) {
      T t1 = t;
      if (i < j) {
        Array.set(t, i, arrayList.get(i));
        i++;
        continue;
      } 
      return t1;
    } 
  }
  
  private T c(List<drg> paramList) {
    if (paramList.isEmpty())
      return null; 
    drg drg = paramList.get(paramList.size() - 1);
    return this.b.cast(a(dqv.a(drg.b)));
  }
  
  int a(Object paramObject) {
    return this.d ? b(paramObject) : c(paramObject);
  }
  
  protected Object a(dqv paramdqv) {
    Class<T> clazz;
    String str;
    if (this.d) {
      clazz = (Class)this.b.getComponentType();
    } else {
      clazz = this.b;
    } 
    try {
      dre dre;
      switch (this.a) {
        case 10:
          dre = (dre)clazz.newInstance();
          paramdqv.a(dre, drh.b(this.c));
          return dre;
        case 11:
          dre = (dre)clazz.newInstance();
          paramdqv.a(dre);
          return dre;
      } 
      int i = this.a;
      throw new IllegalArgumentException((new StringBuilder(24)).append("Unknown type ").append(i).toString());
    } catch (InstantiationException instantiationException) {
      str = String.valueOf(clazz);
      throw new IllegalArgumentException((new StringBuilder(String.valueOf(str).length() + 33)).append("Error creating instance of class ").append(str).toString(), instantiationException);
    } catch (IllegalAccessException illegalAccessException) {
      str = String.valueOf(str);
      throw new IllegalArgumentException((new StringBuilder(String.valueOf(str).length() + 33)).append("Error creating instance of class ").append(str).toString(), illegalAccessException);
    } catch (IOException iOException) {
      throw new IllegalArgumentException("Error reading extension field", iOException);
    } 
  }
  
  final T a(List<drg> paramList) {
    return (paramList == null) ? null : (this.d ? b(paramList) : c(paramList));
  }
  
  protected void a(drg paramdrg, List<Object> paramList) {
    paramList.add(a(dqv.a(paramdrg.b)));
  }
  
  void a(Object paramObject, dqw paramdqw) {
    if (this.d) {
      c(paramObject, paramdqw);
      return;
    } 
    b(paramObject, paramdqw);
  }
  
  protected int b(Object paramObject) {
    int j = 0;
    int k = Array.getLength(paramObject);
    int i = 0;
    while (i < k) {
      int m = j;
      if (Array.get(paramObject, i) != null)
        m = j + c(Array.get(paramObject, i)); 
      i++;
      j = m;
    } 
    return j;
  }
  
  protected void b(Object paramObject, dqw paramdqw) {
    try {
      paramdqw.g(this.c);
      switch (this.a) {
        case 10:
          paramObject = paramObject;
          i = drh.b(this.c);
          paramdqw.a((dre)paramObject);
          paramdqw.e(i, 4);
          return;
        case 11:
          paramdqw.b((dre)paramObject);
          return;
      } 
      int i = this.a;
      throw new IllegalArgumentException((new StringBuilder(24)).append("Unknown type ").append(i).toString());
    } catch (IOException iOException) {
      throw new IllegalStateException(iOException);
    } 
  }
  
  protected int c(Object paramObject) {
    int i = drh.b(this.c);
    switch (this.a) {
      default:
        i = this.a;
        throw new IllegalArgumentException((new StringBuilder(24)).append("Unknown type ").append(i).toString());
      case 10:
        return dqw.b(i, (dre)paramObject);
      case 11:
        break;
    } 
    return dqw.c(i, (dre)paramObject);
  }
  
  protected void c(Object paramObject, dqw paramdqw) {
    int j = Array.getLength(paramObject);
    for (int i = 0; i < j; i++) {
      Object object = Array.get(paramObject, i);
      if (object != null)
        b(object, paramdqw); 
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof dqz))
        return false; 
      paramObject = paramObject;
      if (this.a != ((dqz)paramObject).a || this.b != ((dqz)paramObject).b || this.c != ((dqz)paramObject).c || this.d != ((dqz)paramObject).d)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    int i = this.a;
    int j = this.b.hashCode();
    int k = this.c;
    if (this.d) {
      byte b1 = 1;
      return b1 + (((i + 1147) * 31 + j) * 31 + k) * 31;
    } 
    byte b = 0;
    return b + (((i + 1147) * 31 + j) * 31 + k) * 31;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */