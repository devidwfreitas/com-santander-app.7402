import android.view.ViewGroup;

class hks extends hku {
  hks(ViewGroup paramViewGroup, hkt paramhkt) {
    super(paramViewGroup, paramhkt);
  }
  
  void a(hxl paramhxl) {
    super.a(paramhxl);
    this.e.setVisibility(0);
    this.h.setVisibility(0);
    this.i.setVisibility(0);
    this.e.setText(String.format("início: %s", new Object[] { paramhxl.u() }));
    this.h.setText(String.format("Valor do empréstimo: %s", new Object[] { paramhxl.g() }));
    this.i.setText(String.format("Total de parcelas: %sx", new Object[] { Integer.valueOf(paramhxl.i()) }));
    hnk hnk = new hnk(paramhxl);
    this.d.setText(hnk.a());
    this.d.setTextColor(hnk.a(this.c));
    this.l.setImageResource(hnk.c());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */