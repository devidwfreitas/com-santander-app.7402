class bp implements bl {
  private bx a;
  
  public bp(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2) {
    int i;
    by by;
    byte[] arrayOfByte;
    this.a = null;
    try {
      paramArrayOfbyte1 = (new by(az.b(bz.d(a(Integer.valueOf(1))).getBytes()))).a(paramArrayOfbyte1);
      by = new by(paramArrayOfbyte1);
      arrayOfByte = new byte[32];
      paramArrayOfbyte2 = ca.a(paramArrayOfbyte2);
      i = 0;
    } catch (Exception exception) {
      exception.printStackTrace();
      throw new bv();
    } 
    while (true) {
      if (i >= 6) {
        int j = 0;
        while (true) {
          if (j >= 20) {
            while (true) {
              if (i >= 32) {
                this.a = new bx(by.a(arrayOfByte));
                return;
              } 
              arrayOfByte[i] = exception[i];
              i++;
            } 
            break;
          } 
          arrayOfByte[i] = paramArrayOfbyte2[j];
          j++;
          i++;
        } 
        break;
      } 
      arrayOfByte[i] = exception[i];
      i++;
    } 
  }
  
  private static byte[] a(Integer paramInteger) {
    return ((bd)(new bq()).a()).a(paramInteger);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */