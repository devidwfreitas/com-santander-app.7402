public class jaf implements jae {
  private iyd a;
  
  public jaf(iyd paramiyd) {
    this.a = paramiyd;
  }
  
  public void a(String paramString, iut paramiut) {
    switch (jag.a[paramiut.ordinal()]) {
      default:
        return;
      case 1:
        if (ivm.a(paramString).booleanValue()) {
          this.a.a();
          return;
        } 
        if (ivm.b(paramString).booleanValue()) {
          this.a.b(paramString);
          return;
        } 
        if (ivm.c(paramString).booleanValue()) {
          this.a.d(paramString);
          return;
        } 
        this.a.e(paramString);
        return;
      case 2:
        if (ivm.a(paramString).booleanValue()) {
          this.a.b();
          return;
        } 
        this.a.f(paramString);
        return;
      case 3:
        if (ivm.d(paramString).booleanValue()) {
          this.a.c();
          return;
        } 
        if (ivm.b(paramString).booleanValue()) {
          this.a.g(paramString);
          return;
        } 
        if (ivm.c(paramString).booleanValue()) {
          this.a.h(paramString);
          return;
        } 
        if (ivm.f(paramString)) {
          this.a.j(paramString);
          return;
        } 
        this.a.a(paramString);
        return;
      case 4:
        if (ivm.c(paramString).booleanValue()) {
          this.a.d(paramString);
          return;
        } 
        if (ivm.e(paramString)) {
          this.a.i(paramString);
          return;
        } 
        if (ivm.b(paramString).booleanValue()) {
          this.a.b(paramString);
          return;
        } 
        this.a.a(paramString);
        return;
      case 5:
        break;
    } 
    if (ivm.a(paramString).booleanValue()) {
      this.a.d();
      return;
    } 
    this.a.e(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jaf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */