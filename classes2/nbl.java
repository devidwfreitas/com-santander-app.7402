import android.view.View;

class nbl implements View.OnClickListener {
  nbl(nbg paramnbg) {}
  
  public void onClick(View paramView) {
    nbg.a(this.a, "");
    for (int i = 0; i < nbg.c(this.a).size(); i++)
      nbg.a(this.a, nbg.d(this.a) + (String)nbg.c(this.a).get(i)); 
    nbg.a(this.a).f().y().b().f(nbg.d(this.a));
    nbg.b(this.a).f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */