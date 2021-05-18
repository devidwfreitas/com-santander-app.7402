class bm implements bl {
  private bx a = null;
  
  public bm(byte[] paramArrayOfbyte) {
    try {
      byte[] arrayOfByte = az.b(bz.d(a(Integer.valueOf(0))).getBytes());
      by by = new by((new by(arrayOfByte)).a(paramArrayOfbyte));
      this.a = new bx(by.a(by.a(arrayOfByte)));
      return;
    } catch (Exception exception) {
      throw new bv();
    } 
  }
  
  private static byte[] a(Integer paramInteger) {
    return ((bd)(new bn()).a()).a(paramInteger);
  }
  
  public String a(String paramString) {
    try {
      return this.a.a(bw.b(paramString));
    } catch (Exception exception) {
      throw new bv();
    } 
  }
  
  public String b(String paramString) {
    try {
      return bw.c(this.a.b(paramString));
    } catch (Exception exception) {
      throw new bv();
    } 
  }
  
  public String c(String paramString) {
    if (paramString.length() > 0)
      try {
        return bz.b(paramString.getBytes());
      } catch (Exception exception) {
        throw new bv();
      }  
    return "";
  }
  
  public String d(String paramString) {
    if (paramString.length() > 0)
      try {
        return bz.d(paramString.getBytes());
      } catch (Exception exception) {
        throw new bv();
      }  
    return "";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */