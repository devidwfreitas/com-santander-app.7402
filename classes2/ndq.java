import android.content.Intent;

public class ndq implements ndp {
  private ncq a;
  
  public ndq(ncq paramncq) {
    this.a = paramncq;
  }
  
  public void a(Intent paramIntent) {
    if (paramIntent.hasExtra("tipo")) {
      switch (ndr.a[((nat)paramIntent.getExtras().get("tipo")).ordinal()]) {
        default:
          return;
        case 1:
          this.a.a();
          return;
        case 2:
          this.a.d();
          return;
        case 3:
          this.a.b();
          return;
        case 4:
          this.a.c();
          return;
        case 5:
          this.a.e();
          return;
        case 6:
          this.a.f();
          return;
        case 7:
          this.a.g();
          return;
        case 8:
          this.a.h();
          return;
        case 9:
          this.a.i();
          return;
        case 10:
          break;
      } 
      this.a.j();
      return;
    } 
  }
  
  public boolean b(Intent paramIntent) {
    return (paramIntent.hasExtra("tipo") && paramIntent.getExtras().get("tipo") == nat.USUARIO_SEM_SEMENTE);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */