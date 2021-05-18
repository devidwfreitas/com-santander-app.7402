final class exu extends exy {
  private static final int b = 8;
  
  private static final int c = 20;
  
  private static final int d = 16;
  
  private final String e;
  
  private final String f;
  
  exu(ets paramets, String paramString1, String paramString2) {
    super(paramets);
    this.e = paramString2;
    this.f = paramString1;
  }
  
  private void c(StringBuilder paramStringBuilder, int paramInt) {
    int i = c().a(paramInt, 16);
    if (i == 38400)
      return; 
    paramStringBuilder.append('(');
    paramStringBuilder.append(this.e);
    paramStringBuilder.append(')');
    paramInt = i % 32;
    int j = i / 32;
    i = j % 12 + 1;
    j /= 12;
    if (j / 10 == 0)
      paramStringBuilder.append('0'); 
    paramStringBuilder.append(j);
    if (i / 10 == 0)
      paramStringBuilder.append('0'); 
    paramStringBuilder.append(i);
    if (paramInt / 10 == 0)
      paramStringBuilder.append('0'); 
    paramStringBuilder.append(paramInt);
  }
  
  protected int a(int paramInt) {
    return paramInt % 100000;
  }
  
  public String a() {
    if (b().a() != 84)
      throw eqh.a(); 
    StringBuilder stringBuilder = new StringBuilder();
    b(stringBuilder, 8);
    b(stringBuilder, 48, 20);
    c(stringBuilder, 68);
    return stringBuilder.toString();
  }
  
  protected void a(StringBuilder paramStringBuilder, int paramInt) {
    paramInt /= 100000;
    paramStringBuilder.append('(');
    paramStringBuilder.append(this.f);
    paramStringBuilder.append(paramInt);
    paramStringBuilder.append(')');
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */