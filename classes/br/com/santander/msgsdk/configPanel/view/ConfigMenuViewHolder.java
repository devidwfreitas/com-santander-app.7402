package br.com.santander.msgsdk.configPanel.view;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import br.com.santander.msgsdk.R;
import br.com.santander.uisdk.SantanderSwitch;

public class ConfigMenuViewHolder extends RecyclerView.ViewHolder {
  private Context mContext;
  
  private final MenuSelectorListener mListener;
  
  private TextView menuTextView;
  
  private TextView subtextMenuTextView;
  
  private SantanderSwitch switchCategoryButton;
  
  public ConfigMenuViewHolder(View paramView, Context paramContext, MenuSelectorListener paramMenuSelectorListener) {
    super(paramView);
    this.menuTextView = (TextView)paramView.findViewById(R.id.text_menu_tv);
    this.switchCategoryButton = (SantanderSwitch)paramView.findViewById(R.id.switch_category_button);
    this.subtextMenuTextView = (TextView)paramView.findViewById(R.id.subtext_menu_tv);
    this.mListener = paramMenuSelectorListener;
    this.mContext = paramContext;
  }
  
  public void checkSwitchCategoryButton(boolean paramBoolean) {
    this.switchCategoryButton.setChecked(paramBoolean);
  }
  
  public void onClickSwitchCategoryButton(int paramInt) {
    this.switchCategoryButton.setOnCheckedChangeListener(new ConfigMenuViewHolder$1(this, paramInt));
  }
  
  public void setMenuTextView(String paramString) {
    this.menuTextView.setText(paramString);
  }
  
  public void setSubtextMenuTextView(String paramString) {
    this.subtextMenuTextView.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\view\ConfigMenuViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */