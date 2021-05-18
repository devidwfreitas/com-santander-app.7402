import android.text.TextUtils;
import android.util.Log;

class msa implements gkw<mir> {
  msa(mry parammry, mrw parammrw) {}
  
  public void a(mir parammir) {
    String str;
    try {
      str = parammir.p().getMsgErro();
      String str1 = parammir.p().getCodErro();
      if (TextUtils.isEmpty(str)) {
        if (this.b.g()) {
          this.a.c();
          return;
        } 
        mry.b(this.b, true);
        this.a.b();
        return;
      } 
    } catch (Exception exception) {
      this.a.b(exception);
      return;
    } 
    Log.d("LoginInteractorImpl", "codeError " + exception);
    if (exception.equals("18369") || exception.equals("18370")) {
      this.a.a(new Exception(String.format("%s - %s", new Object[] { exception, str })));
      return;
    } 
    this.a.b(new Exception(String.format("%s - %s", new Object[] { exception, str })));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\msa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */