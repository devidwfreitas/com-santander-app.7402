public final class nls<T> implements nlu<T> {
  private nne<T> a;
  
  public void a(nne<T> paramnne) {
    if (paramnne == null)
      throw new IllegalArgumentException(); 
    if (this.a != null)
      throw new IllegalStateException(); 
    this.a = paramnne;
  }
  
  public T b() {
    if (this.a == null)
      throw new IllegalStateException(); 
    return this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nls.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */