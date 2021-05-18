abstract class exx extends exz {
  protected static final int a = 40;
  
  exx(ets paramets) {
    super(paramets);
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt) {
    int i = 0;
    int j = 0;
    while (i < 13) {
      int m = paramStringBuilder.charAt(i + paramInt) - 48;
      int k = m;
      if ((i & 0x1) == 0)
        k = m * 3; 
      j += k;
      i++;
    } 
    i = 10 - j % 10;
    paramInt = i;
    if (i == 10)
      paramInt = 0; 
    paramStringBuilder.append(paramInt);
  }
  
  protected final void a(StringBuilder paramStringBuilder, int paramInt1, int paramInt2) {
    int i;
    for (i = 0; i < 4; i++) {
      int j = c().a(i * 10 + paramInt1, 10);
      if (j / 100 == 0)
        paramStringBuilder.append('0'); 
      if (j / 10 == 0)
        paramStringBuilder.append('0'); 
      paramStringBuilder.append(j);
    } 
    a(paramStringBuilder, paramInt2);
  }
  
  protected final void b(StringBuilder paramStringBuilder, int paramInt) {
    paramStringBuilder.append("(01)");
    int i = paramStringBuilder.length();
    paramStringBuilder.append('9');
    a(paramStringBuilder, paramInt, i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */