import android.util.Log;

class hwy implements gkv<huy> {
  hwy(hwu paramhwu, hwq paramhwq) {}
  
  public void a(huy paramhuy) {
    try {
      if (paramhuy.getConfirmacao().equalsIgnoreCase("ok")) {
        this.a.a(paramhuy);
        return;
      } 
      this.a.a(new hur(paramhuy.getMensagemErro()));
      return;
    } catch (Exception exception) {
      Log.e("CPURepositoryImpl", "termosCondicaoService", exception);
      this.a.a(new hur(2131297343));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */