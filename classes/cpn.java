import com.google.android.gms.common.api.Status;

class cpn implements cpz {
  cpn(cpm paramcpm) {}
  
  public void a(Status paramStatus) {
    synchronized (cpm.a(this.a)) {
      if (this.a.e())
        return; 
      if (paramStatus.f()) {
        cpm.a(this.a, true);
      } else if (!paramStatus.e()) {
        cpm.b(this.a, true);
      } 
      cpm.b(this.a);
      if (cpm.c(this.a) == 0)
        if (cpm.d(this.a)) {
          cpm.e(this.a);
        } else {
          if (cpm.f(this.a)) {
            paramStatus = new Status(13);
          } else {
            paramStatus = Status.a;
          } 
          this.a.a(new cpp(paramStatus, (cpy<?>[])cpm.g(this.a)));
        }  
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cpn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */