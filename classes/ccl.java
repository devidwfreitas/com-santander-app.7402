import com.facebook.share.widget.LikeView;

public class ccl implements bxo {
  private boolean b;
  
  private ccl(LikeView paramLikeView) {}
  
  public void a() {
    this.b = true;
  }
  
  public void a(bww parambww, bhp parambhp) {
    if (this.b)
      return; 
    bhp bhp1 = parambhp;
    if (parambww != null) {
      if (!parambww.e())
        parambhp = new bhp("Cannot use LikeView. The device may not be supported."); 
      LikeView.a(this.a, parambww);
      LikeView.c(this.a);
      bhp1 = parambhp;
    } 
    if (bhp1 != null && LikeView.d(this.a) != null)
      LikeView.d(this.a).a(bhp1); 
    LikeView.a(this.a, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */