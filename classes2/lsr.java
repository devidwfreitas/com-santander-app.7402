import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;

public class lsr implements kxa {
  public lsr(SinisterDocumentsActivity paramSinisterDocumentsActivity) {}
  
  public void a() {
    if (this.a.isFinishing())
      return; 
    kut kut = new kut();
    kut.c(false);
    kut.a(kuu.GONE);
    kut.b(kuu.CAMERA);
    kut.b(false);
    kut.a(true);
    kus kus = SinisterDocumentsActivity.d(this.a).get(SinisterDocumentsActivity.c(this.a));
    this.a.a(kus);
    kus.a(-1);
    kut.a(kus);
    SinisterDocumentsActivity.e(this.a).a(SinisterDocumentsActivity.c(this.a), kut, true);
  }
  
  public void a(Object paramObject) {
    if (this.a.isFinishing())
      return; 
    paramObject = new kut();
    paramObject.c(false);
    paramObject.a(kuu.GONE);
    paramObject.b(kuu.CAMERA);
    paramObject.b(false);
    paramObject.a(false);
    kus kus = SinisterDocumentsActivity.d(this.a).get(SinisterDocumentsActivity.c(this.a));
    this.a.a(kus);
    kus.a(-1);
    paramObject.a(kus);
    SinisterDocumentsActivity.e(this.a).a(SinisterDocumentsActivity.c(this.a), (kut)paramObject, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */