package br.com.santander.msgsdk.notifications.view;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.customView.ViewHelper;
import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import br.com.santander.msgsdk.util.Utils;
import java.util.List;

public class NotificationAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private final int NOTIFICATION = 0;
  
  private Context context;
  
  NotificationDetail mNotificationDetail;
  
  private List<NotificationDetail> mNotificationList;
  
  private NotificationSelectorListener mNotificationSelectorListener;
  
  private View view;
  
  private final ViewHelper viewHelper = new ViewHelper();
  
  private RecyclerView.ViewHolder viewHolder;
  
  public NotificationAdapter(Context paramContext, List<NotificationDetail> paramList, NotificationSelectorListener paramNotificationSelectorListener) {
    this.context = paramContext;
    this.mNotificationList = paramList;
    this.mNotificationSelectorListener = paramNotificationSelectorListener;
  }
  
  public int getItemCount() {
    return this.mNotificationList.size();
  }
  
  public int getItemViewType(int paramInt) {
    this.mNotificationDetail = this.mNotificationList.get(paramInt);
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    switch (paramViewHolder.getItemViewType()) {
      default:
        return;
      case 0:
        break;
    } 
    setNotificationViewHolder((NotificationViewHolder)paramViewHolder, paramInt);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    this.view = LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.swipe_holder_notification, paramViewGroup, false);
    this.viewHolder = new NotificationViewHolder(this.context, this.view, this.mNotificationSelectorListener);
    return this.viewHolder;
  }
  
  void setNotificationViewHolder(NotificationViewHolder paramNotificationViewHolder, int paramInt) {
    this.mNotificationDetail = this.mNotificationList.get(paramInt);
    this.viewHelper.bind(paramNotificationViewHolder.getSwipeLayout(), this.mNotificationDetail.toString());
    paramNotificationViewHolder.setTitleNotificationTextView(this.mNotificationDetail.getTitle());
    paramNotificationViewHolder.setDescriptionNotificationTextView(this.mNotificationDetail.getText());
    paramNotificationViewHolder.setDateTimeNotificationTextView(Utils.convertDate(this.mNotificationDetail.getSentDate()));
    paramNotificationViewHolder.setTimerNotificationVisibility(this.mNotificationDetail);
    paramNotificationViewHolder.setBackgroundRead(this.mNotificationDetail);
    paramNotificationViewHolder.setTextUnreadTextView(this.mNotificationDetail);
  }
  
  public void updateList(List<NotificationDetail> paramList) {
    this.mNotificationList = paramList;
    notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */