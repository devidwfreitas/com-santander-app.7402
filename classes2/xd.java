import android.content.Context;
import java.util.Calendar;

class xd implements ot {
  xd(wx paramwx) {}
  
  public void a(abv paramabv) {
    String str = ((ov)paramabv).b();
    wx.c(this.a).setText(str);
    String[] arrayOfString = str.replaceAll("[^0-9ˆ/]", "").trim().split("/");
    Calendar calendar = Calendar.getInstance();
    calendar.set(Integer.parseInt(arrayOfString[2]), Integer.parseInt(arrayOfString[1]) - 1, Integer.parseInt(arrayOfString[0]));
    wx.e(this.a).a(wx.a(this.a, calendar, wx.d(this.a)));
    wx.a(this.a, wx.e(this.a).k());
    wx.a(this.a, Boolean.valueOf(true));
    wx.f(this.a);
  }
  
  public void a(aby paramaby) {
    wx.a(this.a, Boolean.valueOf(false));
    aad.a((Context)this.a.e(), new xe(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\xd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */