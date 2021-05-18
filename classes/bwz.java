import com.facebook.FacebookRequestError;

class bwz implements biv {
  bwz(bww parambww, bxq parambxq, bxs parambxs, bxy parambxy) {}
  
  public void a(biu parambiu) {
    bww.c(this.d, this.a.e);
    if (bqq.a(bww.h(this.d))) {
      bww.c(this.d, this.b.e);
      bww.d(this.d, this.b.f);
    } 
    if (bqq.a(bww.h(this.d))) {
      FacebookRequestError facebookRequestError;
      bpu.a(bjb.DEVELOPER_ERRORS, bww.f(), "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { bww.j(this.d) });
      bww bww1 = this.d;
      if (this.b.a() != null) {
        facebookRequestError = this.b.a();
      } else {
        facebookRequestError = this.a.a();
      } 
      bww.a(bww1, "get_verified_id", facebookRequestError);
    } 
    if (this.c != null)
      this.c.a(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */