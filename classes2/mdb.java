import android.view.View;

class mdb extends meg<Item> {
  mdb(mda parammda) {}
  
  public void a(View paramView, int paramInt, mda<Item> parammda, Item paramItem) {
    mdm mdm = parammda.d(paramInt);
    if (mdm != null && paramItem != null && paramItem.l()) {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (paramItem instanceof mdn) {
        bool1 = bool2;
        if (((mdn)paramItem).h() != null)
          bool1 = ((mdn)paramItem).h().a(paramView, mdm, paramItem, paramInt); 
      } 
      bool2 = bool1;
      if (!bool1) {
        bool2 = bool1;
        if (mda.a(parammda) != null)
          bool2 = mda.a(parammda).a(paramView, mdm, paramItem, paramInt); 
      } 
      if (!bool2 && !mda.b(parammda) && mda.c(parammda))
        mda.a(parammda, paramView, (mdt)paramItem, paramInt); 
      if (!bool2 && paramItem instanceof mdp && ((mdp)paramItem).i() && ((mdp)paramItem).j_() != null)
        parammda.j(paramInt); 
      if (!bool2 && mda.d(parammda) && paramItem instanceof mdp && ((mdp)paramItem).j_() != null && ((mdp)paramItem).j_().size() > 0) {
        int[] arrayOfInt = parammda.l();
        int i;
        for (i = arrayOfInt.length - 1; i >= 0; i--) {
          if (arrayOfInt[i] != paramInt)
            parammda.b(arrayOfInt[i], true); 
        } 
      } 
      if (!bool2 && paramItem instanceof mdn && ((mdn)paramItem).d() != null) {
        bool1 = ((mdn)paramItem).d().a(paramView, mdm, paramItem, paramInt);
      } else {
        bool1 = bool2;
      } 
      if (!bool1 && mda.e(parammda) != null)
        mda.e(parammda).a(paramView, mdm, paramItem, paramInt); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mdb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */