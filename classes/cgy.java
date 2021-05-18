import com.github.mikephil.charting.data.Entry;

public class cgy extends cgo<cis> {
  public cgy() {}
  
  public cgy(cis paramcis) {
    super(new cis[] { paramcis });
  }
  
  public cis a() {
    return this.i.get(0);
  }
  
  public Entry a(chv paramchv) {
    return (Entry)a().m((int)paramchv.a());
  }
  
  public void a(cis paramcis) {
    this.i.clear();
    this.i.add(paramcis);
    b();
  }
  
  public cis b(String paramString, boolean paramBoolean) {
    return paramBoolean ? (paramString.equalsIgnoreCase(((cis)this.i.get(0)).p()) ? this.i.get(0) : null) : (paramString.equals(((cis)this.i.get(0)).p()) ? this.i.get(0) : null);
  }
  
  public cis d(int paramInt) {
    return (paramInt == 0) ? a() : null;
  }
  
  public float p() {
    float f = 0.0F;
    for (int i = 0; i < a().I(); i++)
      f += a().m(i).c(); 
    return f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */