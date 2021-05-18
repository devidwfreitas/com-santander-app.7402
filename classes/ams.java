import android.support.v7.widget.RecyclerView;

class ams extends RecyclerView.AdapterDataObserver {
  ams(amr paramamr) {}
  
  public void onChanged() {
    super.onChanged();
    if (amr.d(this.a) == null || amr.e(this.a))
      return; 
    amr.f(this.a);
    amr.c(this.a).clear();
    amr.c(this.a).addAll(amr.a(this.a));
    this.a.notifyDataSetChanged();
    amr.d(this.a).a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */