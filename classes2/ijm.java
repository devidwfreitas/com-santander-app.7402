import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;

class ijm extends AsyncTask<Void, Void, fud> {
  private ijm(ijf paramijf) {}
  
  protected fud a(Void... paramVarArgs) {
    try {
      fud fud2 = ((ghu)ijf.a(this.a).f().s().d().get(ijf.h(this.a).a())).o();
      fud fud1 = fud2;
      if (fud2 == null)
        fud1 = hat.i().d(ijf.l(this.a)); 
      return fud1;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fud paramfud) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfud == null) {
      hat.d().a((Activity)this.a.getActivity(), paramfud, true, true);
      return;
    } 
    if (paramfud.hasError()) {
      ijf.m(this.a).setVisibility(8);
      ijf.n(this.a).setVisibility(0);
      ijf.n(this.a).setText(paramfud.k());
      mxn.b((Activity)this.a.getActivity(), paramfud.k());
      return;
    } 
    ((ghu)ijf.a(this.a).f().s().d().get(ijf.h(this.a).a())).a(paramfud);
    ijf.a(this.a, paramfud);
    ijf.o(this.a);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)this.a.getActivity());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */