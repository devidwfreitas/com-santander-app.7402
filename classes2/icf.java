import java.util.ArrayList;

public class icf implements ice {
  private ick a;
  
  public icf(ick paramick) {
    this.a = paramick;
  }
  
  private gkw<hzt> b() {
    return new icg(this);
  }
  
  public void a() {
    if (miq.C().j() != null && miq.C().f().p() != null) {
      (new iba()).a(b());
      return;
    } 
    this.a.a(false, null);
  }
  
  public void a(ibp paramibp) {
    if (paramibp != null && paramibp.e() != null) {
      ArrayList<ibv> arrayList = new ArrayList();
      ibv ibv = new ibv();
      ibv.a(true);
      ibv.c(paramibp.c() + ".");
      ibv.b(paramibp.d());
      arrayList.add(ibv);
      ArrayList<ibs> arrayList1 = new ArrayList();
      for (ibs ibs : paramibp.e()) {
        if (ibs.a().equalsIgnoreCase("s"))
          arrayList1.add(ibs); 
      } 
      for (ibs ibs : arrayList1) {
        ibv ibv1 = new ibv();
        ibv1.a(false);
        ibv1.c(String.valueOf(ibs.b()));
        ibv1.b(ibs.c());
        arrayList.add(ibv1);
      } 
      this.a.a(arrayList);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\icf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */