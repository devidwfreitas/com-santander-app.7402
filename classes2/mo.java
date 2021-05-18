import android.widget.CompoundButton;

class mo implements CompoundButton.OnCheckedChangeListener {
  mo(mn parammn, int paramInt) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    String str;
    mn.a(this.b)[this.a] = Boolean.valueOf(paramBoolean);
    if (!mn.b(this.b).booleanValue())
      mn.c(this.b); 
    if (paramBoolean) {
      str = mn.d(this.b).getString(lg.tag_valor_sim);
      mn.f(this.b).add(((lx)mn.e(this.b).get(this.a)).c());
    } else {
      str = mn.d(this.b).getString(lg.tag_valor_nao);
      mn.f(this.b).remove(((lx)mn.e(this.b).get(this.a)).c());
    } 
    if (!mn.g(this.b).A())
      zy.b(mn.d(this.b).getString(lg.tag_name_revisao_termos, new Object[] { ((ace)mn.g(this.b).l().get(0)).u(), ((ace)mn.g(this.b).l().get(0)).f().j(), ((ace)mn.g(this.b).l().get(0)).f().k(), ((lx)mn.e(this.b).get(this.a)).b() }), str); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */