public class ksd {
  @eks(a = "card")
  private ksc a;
  
  public ksc a() {
    return this.a;
  }
  
  public void a(ksc paramksc) {
    this.a = paramksc;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof ksd))
        return false; 
      paramObject = paramObject;
      if (a() != null)
        return a().equals(paramObject.a()); 
      if (paramObject.a() != null)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return (a() != null) ? a().hashCode() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ksd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */