import android.text.TextUtils;
import android.util.Log;

class hxb implements gkv<huo> {
  hxb(hwu paramhwu, hws paramhws) {}
  
  public void a(huo paramhuo) {
    try {
      if (paramhuo.getConfirmacao().equalsIgnoreCase("OK")) {
        hyb.j().h();
        this.a.a(paramhuo);
        return;
      } 
      throw new hur(paramhuo.getMensagemErro());
    } catch (Exception exception) {
      hur hur;
      Log.e("CPURepositoryImpl", "contratar", exception);
      if (paramhuo != null && !TextUtils.isEmpty(paramhuo.getMensagemErro())) {
        hur = new hur(paramhuo.getMensagemErro());
      } else {
        hur = new hur(2131297343);
      } 
      this.a.a(hur);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */