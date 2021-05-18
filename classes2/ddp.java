public final class ddp<L> {
  private final L a;
  
  private final String b;
  
  ddp(L paramL, String paramString) {
    this.a = paramL;
    this.b = paramString;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof ddp))
        return false; 
      paramObject = paramObject;
      if (this.a != ((ddp)paramObject).a || !this.b.equals(((ddp)paramObject).b))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return System.identityHashCode(this.a) * 31 + this.b.hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */