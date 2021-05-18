import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;
import java.util.List;

public class hsj implements hsi {
  private hrh a;
  
  private hqa b;
  
  public hsj(hrh paramhrh) {
    this.a = paramhrh;
    this.b = new hqd();
  }
  
  private void e() {
    this.a.a(this.b.a());
  }
  
  private void f() {
    List<ConsignadoDadoObrigatorio> list = this.b.b();
    this.a.a(list);
  }
  
  public void a() {
    e();
    f();
    d();
  }
  
  public void b() {}
  
  public void c() {
    this.a.g();
    this.b.a(new hsk(this));
  }
  
  public void d() {
    if (this.b.c()) {
      this.a.e();
      return;
    } 
    this.a.f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */