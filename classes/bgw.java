import com.facebook.AccessToken;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

class bgw implements biv {
  bgw(bgs parambgs, AccessToken paramAccessToken, bgp parambgp, AtomicBoolean paramAtomicBoolean, bgx parambgx, Set paramSet1, Set paramSet2) {}
  
  public void a(biu parambiu) {
    Exception exception;
    try {
      String str1;
      Set set1;
      Set set2;
      Date date;
      if (bgs.a().b() == null || bgs.a().b().j() != this.a.j()) {
        if (this.b != null)
          this.b.a(new bhp("No current access token to refresh")); 
        bgs.a(this.g).set(false);
        return;
      } 
      if (!this.c.get() && this.d.a == null && this.d.b == 0) {
        if (this.b != null)
          this.b.a(new bhp("Failed to refresh access token")); 
        bgs.a(this.g).set(false);
        return;
      } 
      if (this.d.a != null) {
        str1 = this.d.a;
      } else {
        str1 = this.a.c();
      } 
      String str2 = this.a.i();
      String str3 = this.a.j();
      if (this.c.get()) {
        set1 = this.e;
      } else {
        set1 = this.a.e();
      } 
      if (this.c.get()) {
        set2 = this.f;
      } else {
        set2 = this.a.f();
      } 
      bgy bgy = this.a.g();
      if (this.d.b != 0) {
        date = new Date(this.d.b * 1000L);
      } else {
        date = this.a.d();
      } 
      AccessToken accessToken = new AccessToken(str1, str2, str3, set1, set2, bgy, date, new Date());
    } finally {
      exception = null;
    } 
    bgs.a(this.g).set(false);
    if (this.b != null && parambiu != null)
      this.b.a((AccessToken)parambiu); 
    throw exception;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */