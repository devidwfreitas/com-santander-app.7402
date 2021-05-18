import android.support.v7.widget.RecyclerView;
import android.view.View;

final class mep implements View.OnLongClickListener {
  mep(RecyclerView.ViewHolder paramViewHolder, mei parammei) {}
  
  public boolean onLongClick(View paramView) {
    Object object2 = this.a.itemView.getTag(2131755016);
    Object object1 = this.a.itemView.getTag(2131755017);
    if (object2 instanceof mdt && object1 instanceof mda) {
      object2 = object2;
      object1 = object1;
      int i = object1.a(this.a);
      if (i != -1)
        return ((mek<Object>)this.b).a(paramView, i, (mda)object1, object2); 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */