import android.app.Activity;
import java.util.List;

public class ihv implements ign, ihu {
  private final Activity a;
  
  private ihf b;
  
  private igm c;
  
  public ihv(ihf paramihf) {
    this.b = paramihf;
    this.a = (Activity)paramihf;
    this.c = new igo(this, this.a);
  }
  
  public void a() {}
  
  public void a(int paramInt) {
    this.c.a(paramInt);
  }
  
  public void a(igk paramigk) {
    this.c.a(paramigk);
  }
  
  public void a(List<igj> paramList) {
    this.b.a(paramList);
  }
  
  public void b() {
    this.b.a("Obrigado", "Muito obrigado por nos ajudar a entender.");
  }
  
  public void c() {
    this.b.a("Caro cliente", "Desculpe, não conseguimos enviar seu motivo.");
  }
  
  public void d() {
    this.b.a();
    this.c.a();
  }
  
  public void e() {
    this.b.a("Caro cliente", "Desculpe, não conseguimos cancelar sua proposta neste momento. Tente Novamente mais tarde.");
  }
  
  public void f() {
    this.c.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */