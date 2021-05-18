final class exr extends exv {
  exr(ets paramets) {
    super(paramets);
  }
  
  protected int a(int paramInt) {
    return (paramInt < 10000) ? paramInt : (paramInt - 10000);
  }
  
  protected void a(StringBuilder paramStringBuilder, int paramInt) {
    if (paramInt < 10000) {
      paramStringBuilder.append("(3202)");
      return;
    } 
    paramStringBuilder.append("(3203)");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */