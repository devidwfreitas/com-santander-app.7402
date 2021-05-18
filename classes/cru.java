public final class cru {
  private final int a;
  
  private final int b;
  
  public cru(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public static cru a(String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("string must not be null"); 
    int j = paramString.indexOf('*');
    int i = j;
    if (j < 0)
      i = paramString.indexOf('x'); 
    if (i < 0)
      throw b(paramString); 
    try {
      return new cru(Integer.parseInt(paramString.substring(0, i)), Integer.parseInt(paramString.substring(i + 1)));
    } catch (NumberFormatException numberFormatException) {
      throw b(paramString);
    } 
  }
  
  private static NumberFormatException b(String paramString) {
    throw new NumberFormatException((new StringBuilder(String.valueOf(paramString).length() + 16)).append("Invalid Size: \"").append(paramString).append("\"").toString());
  }
  
  public int a() {
    return this.a;
  }
  
  public int b() {
    return this.b;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool = true;
    if (paramObject != null) {
      if (this == paramObject)
        return true; 
      if (paramObject instanceof cru) {
        paramObject = paramObject;
        if (this.a != ((cru)paramObject).a || this.b != ((cru)paramObject).b)
          bool = false; 
        return bool;
      } 
    } 
    return false;
  }
  
  public int hashCode() {
    return this.b ^ (this.a << 16 | this.a >>> 16);
  }
  
  public String toString() {
    int i = this.a;
    int j = this.b;
    return (new StringBuilder(23)).append(i).append("x").append(j).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cru.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */