import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.CheckBox;
import android.widget.EditText;

class ikw extends AsyncTask<String, Void, fuz> {
  private boolean b = false;
  
  private ikw(ikl paramikl) {}
  
  protected fuz a(String... paramVarArgs) {
    String str1;
    String str2;
    if (paramVarArgs == null)
      return null; 
    if (paramVarArgs[0] != null) {
      str2 = paramVarArgs[0];
    } else {
      str2 = "";
    } 
    if (paramVarArgs[1] != null) {
      str1 = paramVarArgs[1];
    } else {
      str1 = "";
    } 
    try {
      return hat.k().a(str2, str1);
    } catch (Exception exception) {
      Log.e("FazerPagamen...Fragment", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(fuz paramfuz) {
    if (ikl.l(this.a) != null && ikl.l(this.a).isShowing()) {
      ikl.l(this.a).cancel();
      ikl.a(this.a, (Dialog)null);
    } 
    this.b = false;
    if (paramfuz == null || paramfuz.hasError()) {
      ikl.a(this.a, (fuz)null);
      hat.d().a((Activity)this.a.getActivity(), paramfuz, true, false);
      return;
    } 
    ikl.a(this.a, paramfuz);
    ((EditText)this.a.getView().findViewById(2131757313)).setText(paramfuz.m());
    ((EditText)this.a.getView().findViewById(2131757285)).setText(paramfuz.i());
    CheckBox checkBox = (CheckBox)this.a.getView().findViewById(2131757309);
    if (ikl.b(this.a).a().startsWith("8")) {
      if (checkBox != null)
        checkBox.setVisibility(8); 
    } else {
      checkBox.setVisibility(0);
    } 
    ((EditText)this.a.getView().findViewById(2131757315)).setText(nak.a(paramfuz.d(), "dd-MM-yyyy", "dd/MM/yyyy"));
  }
  
  public boolean a() {
    return this.b;
  }
  
  public void onPreExecute() {
    this.b = true;
    ikl.a(this.a, mxn.b((Activity)this.a.getActivity()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ikw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */