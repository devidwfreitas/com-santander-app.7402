import android.content.Context;
import android.util.Log;

class wy implements ot {
  wy(wx paramwx) {}
  
  public void a(abv paramabv) {
    try {
      wx.a(this.a, new om(paramabv));
      wx.a(this.a);
      return;
    } catch (Exception exception) {
      wx.a(this.a, Boolean.valueOf(false));
      a(new aby("-1", "Unparseable data: " + exception.toString()));
      Log.e(getClass().getSimpleName(), "Investment not selected: " + exception.toString());
      return;
    } 
  }
  
  public void a(aby paramaby) {
    wx.a(this.a, Boolean.valueOf(false));
    wz wz = new wz(this);
    aad.a((Context)this.a.e(), wz);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */