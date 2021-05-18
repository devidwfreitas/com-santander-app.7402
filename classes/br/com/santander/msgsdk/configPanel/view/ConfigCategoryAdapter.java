package br.com.santander.msgsdk.configPanel.view;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.configPanel.model.Category;
import java.util.List;

public class ConfigCategoryAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private final int MENU = 0;
  
  private Category category;
  
  private List mCategoryList;
  
  private Context mContext;
  
  private final MenuSelectorListener mMenuSelectorListener;
  
  private View view;
  
  RecyclerView.ViewHolder viewHolder;
  
  public ConfigCategoryAdapter(Context paramContext, List<Category> paramList, MenuSelectorListener paramMenuSelectorListener) {
    this.mContext = paramContext;
    this.mCategoryList = paramList;
    this.mMenuSelectorListener = paramMenuSelectorListener;
  }
  
  private void setMenuCategoryViewHolder(ConfigMenuViewHolder paramConfigMenuViewHolder, int paramInt) {
    this.category = this.mCategoryList.get(paramInt);
    paramConfigMenuViewHolder.setMenuTextView(this.category.getTitle());
    paramConfigMenuViewHolder.checkSwitchCategoryButton(this.category.isMembershipStatus());
    paramConfigMenuViewHolder.setSubtextMenuTextView(this.category.getDescription());
    paramConfigMenuViewHolder.onClickSwitchCategoryButton(paramInt);
  }
  
  public int getItemCount() {
    return this.mCategoryList.size();
  }
  
  public int getItemViewType(int paramInt) {
    this.category = this.mCategoryList.get(paramInt);
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    switch (paramViewHolder.getItemViewType()) {
      default:
        return;
      case 0:
        break;
    } 
    setMenuCategoryViewHolder((ConfigMenuViewHolder)paramViewHolder, paramInt);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    LayoutInflater layoutInflater = LayoutInflater.from(paramViewGroup.getContext());
    switch (paramInt) {
      default:
        return this.viewHolder;
      case 0:
        break;
    } 
    this.view = layoutInflater.inflate(R.layout.holder_config_menu, paramViewGroup, false);
    this.viewHolder = new ConfigMenuViewHolder(this.view, this.mContext, this.mMenuSelectorListener);
    return this.viewHolder;
  }
  
  public void updateDataSet() {
    notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\view\ConfigCategoryAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */