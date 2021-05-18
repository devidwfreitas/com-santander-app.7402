import android.app.Activity;
import android.view.View;

class nbi implements View.OnClickListener {
  nbi(nbh paramnbh) {}
  
  public void onClick(View paramView) {
    nbg.a(this.a.a, "");
    for (int i = 0; i < nbg.c(this.a.a).size(); i++)
      nbg.a(this.a.a, nbg.d(this.a.a) + (String)nbg.c(this.a.a).get(i)); 
    (new nec(new nbj(this), (Activity)nbg.e(this.a.a).getActivity())).a(nbg.d(this.a.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */