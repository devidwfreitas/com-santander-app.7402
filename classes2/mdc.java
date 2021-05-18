import android.view.View;

class mdc extends mek<Item> {
  mdc(mda parammda) {}
  
  public boolean a(View paramView, int paramInt, mda<Item> parammda, Item paramItem) {
    boolean bool3 = false;
    boolean bool2 = false;
    mdm mdm = parammda.d(paramInt);
    boolean bool1 = bool3;
    if (mdm != null) {
      bool1 = bool3;
      if (paramItem != null) {
        bool1 = bool3;
        if (paramItem.l()) {
          if (mda.f(parammda) != null)
            bool2 = mda.f(parammda).a(paramView, mdm, paramItem, paramInt); 
          if (!bool2 && mda.b(parammda) && mda.c(parammda))
            mda.a(parammda, paramView, (mdt)paramItem, paramInt); 
          bool1 = bool2;
          if (!bool2) {
            bool1 = bool2;
            if (mda.g(parammda) != null)
              bool1 = mda.g(parammda).a(paramView, mdm, paramItem, paramInt); 
          } 
        } 
      } 
    } 
    return bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mdc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */