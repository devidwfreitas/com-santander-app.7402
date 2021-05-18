package android.support.design.internal;

import android.support.design.R;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

class NavigationMenuPresenter$NormalViewHolder extends NavigationMenuPresenter$ViewHolder {
  public NavigationMenuPresenter$NormalViewHolder(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, View.OnClickListener paramOnClickListener) {
    super(paramLayoutInflater.inflate(R.layout.design_navigation_item, paramViewGroup, false));
    this.itemView.setOnClickListener(paramOnClickListener);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\NavigationMenuPresenter$NormalViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */