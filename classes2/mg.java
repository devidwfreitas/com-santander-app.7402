import android.content.DialogInterface;

class mg implements DialogInterface.OnClickListener {
  mg(mf parammf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    ma.f(this.a.c).remove(this.a.a.a);
    if (ma.f(this.a.c).isEmpty())
      ma.e(this.a.c).b(); 
    this.a.c.notifyItemRemoved(this.a.b);
    this.a.c.notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */