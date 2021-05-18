import android.os.Bundle;

class ccg extends bny<String, ccf>.bnz {
  private ccg(ccc paramccc) {
    super(paramccc);
  }
  
  public bmr a(String paramString) {
    bmr bmr = this.b.d();
    Bundle bundle = new Bundle();
    bundle.putString("id", paramString);
    bnw.a(bmr, "game_group_join", bundle);
    return bmr;
  }
  
  public boolean a(String paramString, boolean paramBoolean) {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ccg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */