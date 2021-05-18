import java.util.LinkedHashMap;

public final class nma<K, V> {
  private final LinkedHashMap<K, nne<V>> a;
  
  private nma(int paramInt) {
    this.a = nlr.c(paramInt);
  }
  
  public nly<K, V> a() {
    return new nly<K, V>(this.a, null);
  }
  
  public nma<K, V> a(K paramK, nne<V> paramnne) {
    if (paramK == null)
      throw new NullPointerException("The key is null"); 
    if (paramnne == null)
      throw new NullPointerException("The provider of the value is null"); 
    this.a.put(paramK, paramnne);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */