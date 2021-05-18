import android.util.Log;

class hwx implements gkv<hus> {
  hwx(hwu paramhwu, hwp paramhwp) {}
  
  public void a(hus paramhus) {
    try {
      if (paramhus.getConfirmacao().equalsIgnoreCase("OK")) {
        this.a.a(paramhus);
        return;
      } 
      this.a.a(new hur(paramhus.getMensagemErro()));
      return;
    } catch (Exception exception) {
      Log.e("CPURepositoryImpl", "calcular", exception);
      this.a.a(new hur(2131297343));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hwx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */