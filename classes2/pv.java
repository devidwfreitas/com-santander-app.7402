import android.content.Context;
import java.util.Calendar;

class pv implements ot {
  pv(pc parampc) {}
  
  public void a(abv paramabv) {
    String str2 = ((ov)paramabv).b();
    Boolean bool = ((ov)paramabv).c();
    pc.I(this.a).setText(str2);
    pc.a(this.a, Boolean.valueOf(true));
    String[] arrayOfString = str2.replaceAll("[^0-9ˆ/]", "").trim().split("/");
    Calendar calendar = Calendar.getInstance();
    calendar.set(Integer.parseInt(arrayOfString[2]), Integer.parseInt(arrayOfString[1]) - 1, Integer.parseInt(arrayOfString[0]));
    pc.ae(this.a).a(pc.a(this.a, calendar, pc.ad(this.a)));
    if (bool != null) {
      pc.af(this.a).g(bool.booleanValue());
    } else {
      pc.c(this.a, pc.ag(this.a).k());
    } 
    String str1 = abt.PROGRESSIVE_INDEX.getName();
    if (pc.Z(this.a).h(str1) && pc.Z(this.a).d(str1)) {
      pc.k(this.a).d(pc.ah(this.a).k().get(1) + "-" + pc.a(this.a, Integer.valueOf(pc.ai(this.a).k().get(2) + 1)) + "-" + pc.a(this.a, Integer.valueOf(pc.aj(this.a).k().get(5))));
      str1 = abt.MAX_DEADLINE.getName();
      Calendar calendar1 = Calendar.getInstance();
      calendar1.add(5, pc.Z(this.a).b(str1).intValue());
      pc.k(this.a).e(calendar1.get(1) + "-" + pc.a(this.a, Integer.valueOf(calendar1.get(2) + 1)) + "-" + pc.a(this.a, Integer.valueOf(calendar1.get(5))));
    } 
    if (pc.k(this.a).p().equalsIgnoreCase("LCI") && pc.ak(this.a).E().equalsIgnoreCase("C")) {
      pc.al(this.a);
      return;
    } 
    pc.am(this.a);
  }
  
  public void a(aby paramaby) {
    pc.b(this.a, Boolean.valueOf(false));
    aad.a((Context)this.a.e(), new pw(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */