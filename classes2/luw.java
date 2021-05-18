import android.animation.ObjectAnimator;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class luw implements View.OnClickListener {
  luw(luv paramluv, lvd paramlvd, RecyclerView.ViewHolder paramViewHolder) {}
  
  public void onClick(View paramView) {
    ObjectAnimator objectAnimator;
    lvd.b(this.a).setDuration(luv.a(this.c));
    if (lvd.b(this.a).a()) {
      objectAnimator = ObjectAnimator.ofFloat(lvd.f(this.a), View.ROTATION_X, new float[] { 180.0F });
    } else {
      objectAnimator = ObjectAnimator.ofFloat(lvd.f(this.a), View.ROTATION_X, new float[] { 0.0F });
    } 
    lvd.h(this.a).setClickable(false);
    lvd.b(this.a).setOnExpansionUpdateListener(new lux(this));
    if (this.a.getAdapterPosition() == luv.c(this.c)) {
      luv.a(this.c, -1);
      luv.b(this.c, -1);
      lvd.b(this.a).c(true);
    } else {
      lvd.b(this.a).b(true);
      luv.b(this.c, luv.c(this.c));
      luv.a(this.c, this.a.getAdapterPosition());
    } 
    objectAnimator.setDuration(380L);
    objectAnimator.addListener(new luy(this));
    objectAnimator.start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\luw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */