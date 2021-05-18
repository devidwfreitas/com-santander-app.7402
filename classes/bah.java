import android.support.annotation.Nullable;
import android.support.v4.util.Pair;

public class bah<T> {
  @Nullable
  T a;
  
  @Nullable
  T b;
  
  private static boolean b(Object paramObject1, Object paramObject2) {
    return (paramObject1 == paramObject2 || (paramObject1 != null && paramObject1.equals(paramObject2)));
  }
  
  public void a(T paramT1, T paramT2) {
    this.a = paramT1;
    this.b = paramT2;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof Pair) {
      paramObject = paramObject;
      if (b(((Pair)paramObject).first, this.a) && b(((Pair)paramObject).second, this.b))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int i;
    int j = 0;
    if (this.a == null) {
      i = 0;
    } else {
      i = this.a.hashCode();
    } 
    if (this.b != null)
      j = this.b.hashCode(); 
    return i ^ j;
  }
  
  public String toString() {
    return "Pair{" + String.valueOf(this.a) + " " + String.valueOf(this.b) + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */