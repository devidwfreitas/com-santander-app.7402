import android.os.Bundle;
import android.view.View;

class ili implements View.OnFocusChangeListener {
  ili(ilh paramilh) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean) {
      ije ije = new ije();
      Bundle bundle = new Bundle();
      bundle.putSerializable("listener", this.a.a);
      ije.setArguments(bundle);
      ije.show(this.a.a.getActivity().getSupportFragmentManager(), "datePicker");
      ikx.i(this.a.a).clearFocus();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ili.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */