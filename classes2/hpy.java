import com.santander.app.emprestimo.creditopessoal.domain.CPError;

abstract class hpy<ResponseCP, ResponseConsig> implements hso<ResponseCP, ResponseConsig> {
  private ResponseCP a;
  
  private ResponseConsig b;
  
  private boolean c;
  
  private boolean d;
  
  private CPError f;
  
  hpy(hpp paramhpp) {}
  
  hpy(hpp paramhpp, boolean paramBoolean1, boolean paramBoolean2) {
    this.c = paramBoolean1;
    this.d = paramBoolean2;
  }
  
  private void b() {
    if (this.c && this.d) {
      this.e.c(3);
      return;
    } 
    if (this.c) {
      this.e.c(10);
      return;
    } 
    if (this.d) {
      this.e.c(11);
      return;
    } 
    this.e.c(99);
  }
  
  public void a() {
    b();
    if (!this.c && !this.d) {
      c(this.f);
      return;
    } 
    a(this.a, this.b);
  }
  
  public void a(CPError paramCPError) {
    this.f = paramCPError;
  }
  
  public void a(ResponseConsig paramResponseConsig) {
    this.d = true;
    this.b = paramResponseConsig;
  }
  
  public abstract void a(ResponseCP paramResponseCP, ResponseConsig paramResponseConsig);
  
  public void b(CPError paramCPError) {
    if (this.f == null)
      this.f = paramCPError; 
  }
  
  public void b(ResponseCP paramResponseCP) {
    this.c = true;
    this.a = paramResponseCP;
  }
  
  public abstract void c(CPError paramCPError);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hpy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */