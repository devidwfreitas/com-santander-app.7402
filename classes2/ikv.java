import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

class ikv extends AsyncTask<fur, Void, Boolean> {
  ikv(ikl paramikl) {}
  
  protected Boolean a(fur... paramVarArgs) {
    boolean bool3 = false;
    boolean bool1 = false;
    fur fur1 = paramVarArgs[0];
    boolean bool2 = bool3;
    try {
      switch (iku.a[fur1.f().ordinal()]) {
        case 1:
          bool2 = bool3;
          bool1 = hat.n().c(fur1);
          break;
        case 2:
          bool2 = bool3;
          bool1 = hat.n().a(fur1);
          break;
        case 3:
          bool2 = bool3;
          bool1 = hat.n().b(fur1);
          break;
      } 
      bool2 = bool1;
      return Boolean.valueOf(bool1);
    } catch (Exception exception) {
      return Boolean.valueOf(bool2);
    } 
  }
  
  protected void a(Boolean paramBoolean) {
    if (ikl.l(this.a) != null && ikl.l(this.a).isShowing()) {
      ikl.l(this.a).cancel();
      ikl.a(this.a, (Dialog)null);
    } 
  }
  
  public void onPreExecute() {
    ikl.a(this.a, mxn.b((Activity)this.a.getActivity()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */