import android.text.TextUtils;
import android.widget.TextView;

class mac implements gkw<is> {
  mac(lzx paramlzx, kva paramkva) {}
  
  public void a(is paramis) {
    kvb kvb;
    if (lzx.e(this.b).isFinishing())
      return; 
    if (paramis != null && paramis.a().intValue() == 200) {
      kvb = mys.a().<kvb>a(paramis.c().toString(), kvb.class);
      kva kva1 = mhv.INSTANCE.getRequest(kuq.SLIDER_VALUE);
      if (kva1 != null) {
        kva1.a(this.b.b());
        mhv.INSTANCE.removeRequest(kuq.SLIDER_VALUE);
        mhv.INSTANCE.addRequest(kuq.SLIDER_VALUE, kva1);
      } 
      if (kvb.o() == kuq.EQUIPMENT_LIST) {
        lzx.a(this.b, this.b.b());
        return;
      } 
      (lzx.e(this.b)).D.setState(aor.CONTENT);
      if (lzx.e(this.b).getSupportFragmentManager().findFragmentByTag("equipment-list-step-fragment") != null) {
        lzx.e(this.b).getSupportFragmentManager().beginTransaction().remove(lzx.e(this.b).getSupportFragmentManager().findFragmentByTag("equipment-list-step-fragment")).commit();
        lzx.e(this.b).getSupportFragmentManager().popBackStack();
      } 
      lzx.e(this.b).a(kvb, this.a);
      return;
    } 
    (lzx.e(this.b)).D.setState(aor.ERROR);
    try {
      String str;
      TextView textView = (TextView)(lzx.e(this.b)).D.findViewById(2131757215);
      if (kvb != null && !TextUtils.isEmpty(kvb.b())) {
        str = kvb.b();
      } else {
        str = this.b.getResources().getString(2131297122);
      } 
      textView.setText(str);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */