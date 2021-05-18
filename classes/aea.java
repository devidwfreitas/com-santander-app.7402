public class aea {
  private static aea a = null;
  
  private aee b;
  
  private ji c;
  
  private boolean d;
  
  public static aea a() {
    if (a == null) {
      aea aea1 = new aea();
      a = aea1;
      aea1.a(aee.USER_SANTANDER);
    } 
    return a;
  }
  
  private void a(aee paramaee) {
    this.b = paramaee;
  }
  
  public void a(int paramInt) {
    if (paramInt != aee.USER_SANTANDER.getValue()) {
      if (paramInt == aee.USER_PRIVATE.getValue()) {
        a(aee.USER_PRIVATE);
        return;
      } 
      if (paramInt == aee.USER_JOVEM_PROFISSIONAL.getValue()) {
        a(aee.USER_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramInt == aee.USER_SELECT.getValue()) {
        a(aee.USER_SELECT);
        return;
      } 
      if (paramInt == aee.USER_UNIVERSIDADES.getValue()) {
        a(aee.USER_UNIVERSIDADES);
        return;
      } 
      if (paramInt == aee.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL.getValue()) {
        a(aee.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramInt == aee.USER_VAN_GOGH.getValue()) {
        a(aee.USER_VAN_GOGH);
        return;
      } 
      if (paramInt == aee.USER_VAN_GOGH_UNIVERSIDADES.getValue()) {
        a(aee.USER_VAN_GOGH_UNIVERSIDADES);
        return;
      } 
    } 
    a(aee.USER_SANTANDER);
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
    if (!paramString.equals(aee.USER_SANTANDER.toString())) {
      if (paramString.equals(aee.USER_PRIVATE.toString())) {
        a(aee.USER_PRIVATE);
        return;
      } 
      if (paramString.equals(aee.USER_JOVEM_PROFISSIONAL.toString())) {
        a(aee.USER_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramString.equals(aee.USER_SELECT.toString())) {
        a(aee.USER_SELECT);
        return;
      } 
      if (paramString.equals(aee.USER_UNIVERSIDADES.toString())) {
        a(aee.USER_UNIVERSIDADES);
        return;
      } 
      if (paramString.equals(aee.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL.toString())) {
        a(aee.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL);
        return;
      } 
      if (paramString.equals(aee.USER_VAN_GOGH.toString())) {
        a(aee.USER_VAN_GOGH);
        return;
      } 
      if (paramString.equals(aee.USER_VAN_GOGH_UNIVERSIDADES.toString())) {
        a(aee.USER_VAN_GOGH_UNIVERSIDADES);
        return;
      } 
    } 
    a(aee.USER_SANTANDER);
  }
  
  public void a(ji paramji) {
    this.c = paramji;
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public aee b() {
    return this.b;
  }
  
  public void c() {
    a = null;
  }
  
  public ji d() {
    return this.c;
  }
  
  public boolean e() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */