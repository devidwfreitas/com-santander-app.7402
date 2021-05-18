import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public abstract class bby<V, O> implements bbu<V, O> {
  final List<axz<V>> a;
  
  final V b;
  
  bby(V paramV) {
    this(Collections.emptyList(), paramV);
  }
  
  bby(List<axz<V>> paramList, V paramV) {
    this.a = paramList;
    this.b = paramV;
  }
  
  O a(V paramV) {
    return (O)paramV;
  }
  
  public boolean a_() {
    return !this.a.isEmpty();
  }
  
  public O c() {
    return a(this.b);
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("parseInitialValue=").append(this.b);
    if (!this.a.isEmpty())
      stringBuilder.append(", values=").append(Arrays.toString(this.a.toArray())); 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bby.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */