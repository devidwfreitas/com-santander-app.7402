import android.app.Activity;

class nbn implements gkw {
  nbn(nbg paramnbg, boolean paramBoolean) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    nbg.a(this.b).f().i(paramObject.getTokenTransacao());
    String str2 = mzr.k();
    String str1 = mzr.l();
    String str3 = mzr.j();
    paramObject = str1;
    if (this.a)
      paramObject = nbg.b(this.b, str1); 
    if (str2 != null && str2.length() > 0 && naq.g(str2)) {
      if (str2.length() > 1) {
        nbg.b(this.b).a(str2);
      } else {
        nbg.b(this.b).a("0" + str2);
      } 
    } else {
      nbg.b(this.b).a("");
      mxn.a((Activity)nbg.e(this.b).getActivity(), "Alerta", "Erro ao obter o código do cartão de segurança. Por favor tente novamente em instantes.", true);
    } 
    if (paramObject != null && paramObject.length() > 0) {
      nbg.b(this.b).b((String)paramObject);
    } else {
      nbg.b(this.b).b("");
    } 
    if (str3 != null && str3.length() == 10) {
      paramObject = str3.split("");
      if (paramObject.length == 11) {
        nbg.b(this.b).a((String[])paramObject);
        return;
      } 
      nbg.b(this.b).b();
      return;
    } 
    nbg.b(this.b).b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */