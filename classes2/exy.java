abstract class exy extends exx {
  exy(ets paramets) {
    super(paramets);
  }
  
  protected abstract int a(int paramInt);
  
  protected abstract void a(StringBuilder paramStringBuilder, int paramInt);
  
  protected final void b(StringBuilder paramStringBuilder, int paramInt1, int paramInt2) {
    paramInt1 = c().a(paramInt1, paramInt2);
    a(paramStringBuilder, paramInt1);
    int i = a(paramInt1);
    paramInt2 = 100000;
    for (paramInt1 = 0; paramInt1 < 5; paramInt1++) {
      if (i / paramInt2 == 0)
        paramStringBuilder.append('0'); 
      paramInt2 /= 10;
    } 
    paramStringBuilder.append(i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */