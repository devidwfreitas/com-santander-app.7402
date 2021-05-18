public class ajd {
  private static ajd a = null;
  
  private ji b;
  
  private aju c;
  
  private boolean d;
  
  public static ajd a() {
    // Byte code:
    //   0: ldc ajd
    //   2: monitorenter
    //   3: getstatic ajd.a : Lajd;
    //   6: ifnonnull -> 28
    //   9: new ajd
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore_0
    //   17: aload_0
    //   18: putstatic ajd.a : Lajd;
    //   21: aload_0
    //   22: getstatic aju.USER_SANTANDER : Laju;
    //   25: invokespecial a : (Laju;)V
    //   28: getstatic ajd.a : Lajd;
    //   31: astore_0
    //   32: ldc ajd
    //   34: monitorexit
    //   35: aload_0
    //   36: areturn
    //   37: astore_0
    //   38: ldc ajd
    //   40: monitorexit
    //   41: aload_0
    //   42: athrow
    // Exception table:
    //   from	to	target	type
    //   3	28	37	finally
    //   28	32	37	finally
  }
  
  private void a(aju paramaju) {
    this.c = paramaju;
  }
  
  public void a(int paramInt) {
    if (paramInt != aju.USER_SANTANDER.getValue()) {
      if (paramInt == aju.USER_PRIVATE.getValue()) {
        a(aju.USER_PRIVATE);
        return;
      } 
      if (paramInt == aju.USER_JOVEM_PROFISSIONAL.getValue()) {
        a(aju.USER_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramInt == aju.USER_SELECT.getValue()) {
        a(aju.USER_SELECT);
        return;
      } 
      if (paramInt == aju.USER_UNIVERSIDADES.getValue()) {
        a(aju.USER_UNIVERSIDADES);
        return;
      } 
      if (paramInt == aju.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL.getValue()) {
        a(aju.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramInt == aju.USER_VAN_GOGH.getValue()) {
        a(aju.USER_VAN_GOGH);
        return;
      } 
      if (paramInt == aju.USER_VAN_GOGH_UNIVERSIDADES.getValue()) {
        a(aju.USER_VAN_GOGH_UNIVERSIDADES);
        return;
      } 
    } 
    a(aju.USER_SANTANDER);
  }
  
  public void a(String paramString) {
    try {
      int i = Integer.parseInt(paramString);
      if (i > 0) {
        a(i);
        return;
      } 
    } catch (NumberFormatException numberFormatException) {
      byte b = -1;
      if (b > 0) {
        a(b);
        return;
      } 
    } 
    if (!paramString.equals(aju.USER_SANTANDER.toString())) {
      if (paramString.equals(aju.USER_PRIVATE.toString())) {
        a(aju.USER_PRIVATE);
        return;
      } 
      if (paramString.equals(aju.USER_JOVEM_PROFISSIONAL.toString())) {
        a(aju.USER_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramString.equals(aju.USER_SELECT.toString())) {
        a(aju.USER_SELECT);
        return;
      } 
      if (paramString.equals(aju.USER_UNIVERSIDADES.toString())) {
        a(aju.USER_UNIVERSIDADES);
        return;
      } 
      if (paramString.equals(aju.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL.toString())) {
        a(aju.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramString.equals(aju.USER_VAN_GOGH.toString())) {
        a(aju.USER_VAN_GOGH);
        return;
      } 
      if (paramString.equals(aju.USER_VAN_GOGH_UNIVERSIDADES.toString())) {
        a(aju.USER_VAN_GOGH_UNIVERSIDADES);
        return;
      } 
    } 
    a(aju.USER_SANTANDER);
  }
  
  public void a(ji paramji) {
    this.b = paramji;
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public aju b() {
    return this.c;
  }
  
  public ji c() {
    return this.b;
  }
  
  public boolean d() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */