import android.util.Log;

class hww implements gkv<hus> {
  hww(hwu paramhwu, hwp paramhwp) {}
  
  public void a(hus paramhus) {
    try {
      if (paramhus.getConfirmacao().equalsIgnoreCase("OK")) {
        this.a.a(paramhus);
        return;
      } 
      throw new hur(paramhus.getMensagemErro());
    } catch (hur hur) {
      Log.e("CPURepositoryImpl", "consultarContratos", hur);
      this.a.a(hur);
      return;
    } catch (NullPointerException nullPointerException) {
      Log.e("CPURepositoryImpl", "consultarContratos", nullPointerException);
      this.a.a(new hur(2131297343));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hww.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */