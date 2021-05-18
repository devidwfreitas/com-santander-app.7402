import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class drb implements Cloneable {
  private dqz<?, ?> a;
  
  private Object b;
  
  private List<drg> c = new ArrayList<drg>();
  
  private byte[] c() {
    byte[] arrayOfByte = new byte[a()];
    a(dqw.a(arrayOfByte));
    return arrayOfByte;
  }
  
  int a() {
    if (this.b != null)
      return this.a.a(this.b); 
    Iterator<drg> iterator = this.c.iterator();
    int i = 0;
    while (true) {
      int j = i;
      if (iterator.hasNext()) {
        i = ((drg)iterator.next()).a() + i;
        continue;
      } 
      return j;
    } 
  }
  
  <T> T a(dqz<?, T> paramdqz) {
    if (this.b != null) {
      if (!this.a.equals(paramdqz))
        throw new IllegalStateException("Tried to getExtension with a different Extension."); 
    } else {
      this.a = paramdqz;
      this.b = paramdqz.a(this.c);
      this.c = null;
    } 
    return (T)this.b;
  }
  
  void a(dqw paramdqw) {
    if (this.b != null) {
      this.a.a(this.b, paramdqw);
      return;
    } 
    Iterator<drg> iterator = this.c.iterator();
    while (true) {
      if (iterator.hasNext()) {
        ((drg)iterator.next()).a(paramdqw);
        continue;
      } 
      return;
    } 
  }
  
  void a(drg paramdrg) {
    this.c.add(paramdrg);
  }
  
  public final drb b() {
    drb drb1 = new drb();
    try {
      drb1.a = this.a;
      if (this.c == null) {
        drb1.c = null;
      } else {
        drb1.c.addAll(this.c);
      } 
      if (this.b == null)
        return drb1; 
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      throw new AssertionError(cloneNotSupportedException);
    } 
    if (this.b instanceof dre) {
      ((drb)cloneNotSupportedException).b = ((dre)this.b).clone();
      return (drb)cloneNotSupportedException;
    } 
    if (this.b instanceof byte[]) {
      ((drb)cloneNotSupportedException).b = ((byte[])this.b).clone();
      return (drb)cloneNotSupportedException;
    } 
    if (this.b instanceof byte[][]) {
      byte[][] arrayOfByte1 = (byte[][])this.b;
      byte[][] arrayOfByte2 = new byte[arrayOfByte1.length][];
      ((drb)cloneNotSupportedException).b = arrayOfByte2;
      for (int i = 0; i < arrayOfByte1.length; i++)
        arrayOfByte2[i] = (byte[])arrayOfByte1[i].clone(); 
    } else {
      if (this.b instanceof boolean[]) {
        ((drb)cloneNotSupportedException).b = ((boolean[])this.b).clone();
        return (drb)cloneNotSupportedException;
      } 
      if (this.b instanceof int[]) {
        ((drb)cloneNotSupportedException).b = ((int[])this.b).clone();
        return (drb)cloneNotSupportedException;
      } 
      if (this.b instanceof long[]) {
        ((drb)cloneNotSupportedException).b = ((long[])this.b).clone();
        return (drb)cloneNotSupportedException;
      } 
      if (this.b instanceof float[]) {
        ((drb)cloneNotSupportedException).b = ((float[])this.b).clone();
        return (drb)cloneNotSupportedException;
      } 
      if (this.b instanceof double[]) {
        ((drb)cloneNotSupportedException).b = ((double[])this.b).clone();
        return (drb)cloneNotSupportedException;
      } 
      if (this.b instanceof dre[]) {
        dre[] arrayOfDre1 = (dre[])this.b;
        dre[] arrayOfDre2 = new dre[arrayOfDre1.length];
        ((drb)cloneNotSupportedException).b = arrayOfDre2;
        for (int i = 0; i < arrayOfDre1.length; i++)
          arrayOfDre2[i] = (dre)arrayOfDre1[i].clone(); 
      } 
    } 
    return (drb)cloneNotSupportedException;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    if (paramObject == this)
      return true; 
    boolean bool1 = bool2;
    if (paramObject instanceof drb) {
      paramObject = paramObject;
      if (this.b != null && ((drb)paramObject).b != null) {
        bool1 = bool2;
        return (this.a == ((drb)paramObject).a) ? (!this.a.b.isArray() ? this.b.equals(((drb)paramObject).b) : ((this.b instanceof byte[]) ? Arrays.equals((byte[])this.b, (byte[])((drb)paramObject).b) : ((this.b instanceof int[]) ? Arrays.equals((int[])this.b, (int[])((drb)paramObject).b) : ((this.b instanceof long[]) ? Arrays.equals((long[])this.b, (long[])((drb)paramObject).b) : ((this.b instanceof float[]) ? Arrays.equals((float[])this.b, (float[])((drb)paramObject).b) : ((this.b instanceof double[]) ? Arrays.equals((double[])this.b, (double[])((drb)paramObject).b) : ((this.b instanceof boolean[]) ? Arrays.equals((boolean[])this.b, (boolean[])((drb)paramObject).b) : Arrays.deepEquals((Object[])this.b, (Object[])((drb)paramObject).b)))))))) : bool1;
      } 
      if (this.c != null && ((drb)paramObject).c != null)
        return this.c.equals(((drb)paramObject).c); 
      try {
        return Arrays.equals(c(), paramObject.c());
      } catch (IOException iOException) {
        throw new IllegalStateException(iOException);
      } 
    } 
    return bool1;
  }
  
  public int hashCode() {
    try {
      int i = Arrays.hashCode(c());
      return i + 527;
    } catch (IOException iOException) {
      throw new IllegalStateException(iOException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */