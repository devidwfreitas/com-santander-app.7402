import java.util.Collection;

public final class ngl extends ngp {
  private volatile int a;
  
  private final long b = 0L;
  
  private final int c = 0;
  
  public ngl() {
    super(0L, null, null, null, null);
  }
  
  public ngl(long paramLong1, Collection<nfz> paramCollection, Collection<nga> paramCollection1, Collection<ngb> paramCollection2, Collection<ngc> paramCollection3, long paramLong2, int paramInt) {
    super(paramLong1, paramCollection, paramCollection1, paramCollection2, paramCollection3);
  }
  
  public long a() {
    return this.b;
  }
  
  public String a(String paramString) {
    String str1 = paramString;
    if (paramString == null)
      str1 = ""; 
    if (str1.length() == 0) {
      paramString = "    ";
      String str = System.getProperty("line.separator");
      return str1 + "CurrentVisit : {" + str + paramString + "creation_ts : " + f() + str + paramString + "last_event : " + this.b + str + paramString + "total_event_count : " + this.c + str + paramString + "dates : " + j().c(paramString) + str + paramString + "flags : " + g().c(paramString) + str + paramString + "metrics : " + h().c(paramString) + str + paramString + "properties : " + i().c(paramString) + str + str1 + "}";
    } 
    paramString = str1 + str1;
    String str2 = System.getProperty("line.separator");
    return str1 + "CurrentVisit : {" + str2 + paramString + "creation_ts : " + f() + str2 + paramString + "last_event : " + this.b + str2 + paramString + "total_event_count : " + this.c + str2 + paramString + "dates : " + j().c(paramString) + str2 + paramString + "flags : " + g().c(paramString) + str2 + paramString + "metrics : " + h().c(paramString) + str2 + paramString + "properties : " + i().c(paramString) + str2 + str1 + "}";
  }
  
  public int b() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    if (super.equals(paramObject) && paramObject instanceof ngl) {
      paramObject = paramObject;
      if (this.b == ((ngl)paramObject).b && this.c == ((ngl)paramObject).c && super.equals(paramObject))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.a;
    int i = j;
    if (j == 0) {
      i = ((super.hashCode() + 527) * 31 + (int)(this.b ^ this.b >>> 32L)) * 31 + this.c;
      this.a = i;
    } 
    return i;
  }
  
  public String toString() {
    return a((String)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */