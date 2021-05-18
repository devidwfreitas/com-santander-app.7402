import android.view.ViewGroup;

class hkx extends hku {
  hkx(ViewGroup paramViewGroup, hkt paramhkt) {
    super(paramViewGroup, paramhkt);
  }
  
  private void d() {
    this.e.setVisibility(0);
    this.h.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.e.setText(String.format("início: %s", new Object[] { this.b.u() }));
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Parcelas em aberto: %sx", new Object[] { Integer.valueOf(this.b.h()) }));
  }
  
  private void e() {
    this.h.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.k.setVisibility(0);
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Parcelas em aberto: %sx", new Object[] { Integer.valueOf(this.b.h()) }));
    this.k.setText(String.format("Parcelas em atraso: %sx", new Object[] { Integer.valueOf(this.b.w()) }));
  }
  
  private void f() {
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.h.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.f.setText(String.format("Data de solicitação: %s", new Object[] { this.b.u() }));
    this.g.setText(String.format("Data de cancelamento: %s", new Object[] { this.b.x() }));
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Total de parcelas: %sx", new Object[] { Integer.valueOf(this.b.i()) }));
  }
  
  private void g() {
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.h.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.f.setText(String.format("Data de solicitação: %s", new Object[] { this.b.u() }));
    this.g.setText(String.format("Prazo para aprovação: %s", new Object[] { this.b.v() }));
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Total de parcelas: %sx", new Object[] { Integer.valueOf(this.b.i()) }));
  }
  
  private void h() {
    this.h.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Parcelas em aberto: %sx", new Object[] { Integer.valueOf(this.b.h()) }));
  }
  
  private void i() {
    this.f.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.h.setVisibility(0);
    this.f.setText(String.format("Data de solicitação: %s", new Object[] { this.b.u() }));
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Total de parcelas: %sx", new Object[] { Integer.valueOf(this.b.i()) }));
  }
  
  private void j() {
    this.f.setVisibility(0);
    this.i.setVisibility(0);
    this.j.setVisibility(0);
    this.h.setVisibility(0);
    if (this.b.f()) {
      this.f.setText(String.format("Data de solicitação: %s", new Object[] { this.b.u() }));
      this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
      this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
      this.j.setText(String.format("Total de parcelas: %sx", new Object[] { Integer.valueOf(this.b.i()) }));
      return;
    } 
    this.f.setText(String.format("Início: %s", new Object[] { this.b.u() }));
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { this.b.g() }));
    this.i.setText(String.format("Parcela: %s", new Object[] { this.b.k() }));
    this.j.setText(String.format("Parcelas em aberto: %sx", new Object[] { Integer.valueOf(this.b.h()) }));
  }
  
  void a(hxl paramhxl) {
    super.a(paramhxl);
    if (paramhxl.b() == 1) {
      d();
    } else if (paramhxl.b() == 5) {
      e();
    } else if (paramhxl.b() == 2) {
      f();
    } else if (paramhxl.b() == 4) {
      g();
    } else if (paramhxl.b() == 6) {
      h();
    } else if (paramhxl.b() == 3) {
      i();
    } else if (paramhxl.b() == 7) {
      j();
    } 
    hnk hnk = new hnk(paramhxl);
    this.d.setText(hnk.a());
    this.d.setTextColor(hnk.a(this.c));
    this.l.setImageResource(hnk.c());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hkx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */