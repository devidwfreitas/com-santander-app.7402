import android.os.Bundle;

final class bzf extends byu {
  bzf(bhl parambhl1, bhl parambhl2) {
    super(parambhl1);
  }
  
  public void a(bmr parambmr) {
    bze.b(this.a);
  }
  
  public void a(bmr parambmr, Bundle paramBundle) {
    String str;
    if (paramBundle != null) {
      str = bze.a(paramBundle);
      if (str == null || "post".equalsIgnoreCase(str)) {
        str = bze.b(paramBundle);
        bze.b(this.a, str);
        return;
      } 
    } else {
      return;
    } 
    if ("cancel".equalsIgnoreCase(str)) {
      bze.b(this.a);
      return;
    } 
    bze.a(this.a, new bhp("UnknownError"));
  }
  
  public void a(bmr parambmr, bhp parambhp) {
    bze.a(this.a, parambhp);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */