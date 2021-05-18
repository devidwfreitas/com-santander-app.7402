public abstract class dqy<M extends dqy<M>> extends dre {
  protected dra ag;
  
  private void a(int paramInt, drg paramdrg) {
    drb drb1 = null;
    if (this.ag == null) {
      this.ag = new dra();
    } else {
      drb1 = this.ag.a(paramInt);
    } 
    drb drb2 = drb1;
    if (drb1 == null) {
      drb2 = new drb();
      this.ag.a(paramInt, drb2);
    } 
    drb2.a(paramdrg);
  }
  
  protected int a() {
    boolean bool;
    int i = 0;
    if (this.ag != null) {
      int j = 0;
      while (true) {
        bool = j;
        if (i < this.ag.a()) {
          j += this.ag.b(i).a();
          i++;
          continue;
        } 
        break;
      } 
    } else {
      bool = false;
    } 
    return bool;
  }
  
  public final <T> T a(dqz<M, T> paramdqz) {
    if (this.ag != null) {
      drb drb = this.ag.a(drh.b(paramdqz.c));
      if (drb != null)
        return drb.a(paramdqz); 
    } 
    return null;
  }
  
  public void a(dqw paramdqw) {
    if (this.ag != null) {
      int i = 0;
      while (true) {
        if (i < this.ag.a()) {
          this.ag.b(i).a(paramdqw);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected final boolean a(dqv paramdqv, int paramInt) {
    int i = paramdqv.t();
    if (!paramdqv.b(paramInt))
      return false; 
    a(drh.b(paramInt), new drg(paramInt, paramdqv.a(i, paramdqv.t() - i)));
    return true;
  }
  
  public M d() {
    dqy dqy1 = (dqy)super.e();
    drc.a(this, dqy1);
    return (M)dqy1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */