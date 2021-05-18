import android.util.Log;

class hxa implements gkv<huy> {
  hxa(hwu paramhwu, hwr paramhwr, String paramString) {}
  
  public void a(huy paramhuy) {
    try {
      if (paramhuy.getConfirmacao().equalsIgnoreCase("ok")) {
        this.a.a(paramhuy.a(), this.b);
        return;
      } 
      this.a.a(new hur(paramhuy.getMensagemErro()));
      return;
    } catch (Exception exception) {
      Log.e("CPURepositoryImpl", "callQuadroAviso", exception);
      this.a.a(new hur(2131297343));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */