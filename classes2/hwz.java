import android.util.Log;

class hwz implements gkv<huy> {
  hwz(hwu paramhwu, hwr paramhwr) {}
  
  public void a(huy paramhuy) {
    try {
      if (paramhuy.getConfirmacao().equalsIgnoreCase("ok")) {
        hwu.a(this.b, paramhuy.a(), this.a);
        return;
      } 
      this.a.a(new hur(paramhuy.getMensagemErro()));
      return;
    } catch (Exception exception) {
      Log.e("CPURepositoryImpl", "callVantagemSeguroService", exception);
      this.a.a(new hur(2131297343));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hwz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */