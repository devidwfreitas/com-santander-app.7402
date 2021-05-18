import android.app.Activity;

public class mpt implements mmh, mps {
  private Activity a;
  
  private mns b;
  
  private mmg c;
  
  public mpt(Activity paramActivity, mns parammns) {
    this.a = paramActivity;
    this.b = parammns;
    this.c = new mmi(paramActivity, this);
  }
  
  public void a() {
    this.b.finish();
  }
  
  public void a(gvb paramgvb) {
    this.b.a(paramgvb);
  }
  
  public void a(mlo parammlo) {
    this.c.a(parammlo);
  }
  
  public void b(gvb paramgvb) {
    if (paramgvb.g() != null && paramgvb.g().toLowerCase().contains("incorrect authentication")) {
      mxn.a("Não foi possível efetuar a transação. Por favor, tente novamente mais tarde.", true);
      return;
    } 
    this.b.a(paramgvb);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */