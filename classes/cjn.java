import com.github.mikephil.charting.data.Entry;

public abstract class cjn extends cjt {
  protected cjo f = new cjo(this);
  
  public cjn(cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
  }
  
  protected boolean a(cio paramcio) {
    return (paramcio.B() && paramcio.A());
  }
  
  protected boolean a(Entry paramEntry, cil<Entry> paramcil) {
    if (paramEntry != null) {
      float f = paramcil.h(paramEntry);
      if (paramEntry != null && f < paramcil.I() * this.g.b())
        return true; 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */