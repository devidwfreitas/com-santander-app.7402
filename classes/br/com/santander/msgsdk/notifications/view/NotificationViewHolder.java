package br.com.santander.msgsdk.notifications.view;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.customView.SwipeLayout;
import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import br.com.santander.msgsdk.util.Utils;

public class NotificationViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, SwipeLayout.SwipeListener {
  private static final String TAG = NotificationViewHolder.class.getName();
  
  private Context context;
  
  private TextView dateTimeNotificationTextView;
  
  private LinearLayout deleteLinearLayout;
  
  private TextView descriptionNotificationTextView;
  
  private ImageView detailNotificationImageView;
  
  private ImageView iconUnreadMessageImageView;
  
  private final NotificationSelectorListener mNotificationSelectorListener;
  
  private LinearLayout notificationLinearLayout;
  
  private FrameLayout optionsFrameLayout;
  
  private SwipeLayout swipeLayout;
  
  private TextView textUnreadTextView;
  
  private ImageView timerNotificationImageView;
  
  private TextView titleNotificationTextView;
  
  private LinearLayout unreadLinearLayout;
  
  public NotificationViewHolder(Context paramContext, View paramView, NotificationSelectorListener paramNotificationSelectorListener) {
    super(paramView);
    this.context = paramContext;
    this.mNotificationSelectorListener = paramNotificationSelectorListener;
    this.swipeLayout = (SwipeLayout)paramView.findViewById(R.id.swipe_view);
    this.titleNotificationTextView = (TextView)paramView.findViewById(R.id.title_notification_tv);
    this.dateTimeNotificationTextView = (TextView)paramView.findViewById(R.id.date_time_notification_tv);
    this.detailNotificationImageView = (ImageView)paramView.findViewById(R.id.detail_notification_imv);
    this.descriptionNotificationTextView = (TextView)paramView.findViewById(R.id.description_notification_tv);
    this.timerNotificationImageView = (ImageView)paramView.findViewById(R.id.timer_notification_imv);
    this.notificationLinearLayout = (LinearLayout)paramView.findViewById(R.id.notification_ll);
    this.unreadLinearLayout = (LinearLayout)paramView.findViewById(R.id.unread_ll);
    this.deleteLinearLayout = (LinearLayout)paramView.findViewById(R.id.delete_ll);
    this.textUnreadTextView = (TextView)paramView.findViewById(R.id.textUnreadTextView);
    this.iconUnreadMessageImageView = (ImageView)paramView.findViewById(R.id.unread_image_view);
    this.timerNotificationImageView.setOnClickListener(this);
    this.notificationLinearLayout.setOnClickListener(this);
    this.unreadLinearLayout.setOnClickListener(this);
    this.deleteLinearLayout.setOnClickListener(this);
    this.swipeLayout.setSwipeListener(this);
  }
  
  public SwipeLayout getSwipeLayout() {
    return this.swipeLayout;
  }
  
  public void onClick(View paramView) {
    int i = getAdapterPosition();
    Log.d(TAG, "onClick position: " + i);
    if (paramView.getId() == R.id.timer_notification_imv) {
      this.mNotificationSelectorListener.onClickTimerNotification(i);
      return;
    } 
    if (paramView.getId() == R.id.notification_ll) {
      this.mNotificationSelectorListener.onClickNotification(i);
      return;
    } 
    if (paramView.getId() == R.id.unread_ll) {
      this.mNotificationSelectorListener.onClickUnreadMessage(i, getSwipeLayout());
      return;
    } 
    if (paramView.getId() == R.id.delete_ll) {
      this.mNotificationSelectorListener.onClickDeleteMessage(i, getSwipeLayout());
      return;
    } 
  }
  
  public void onClosed(SwipeLayout paramSwipeLayout) {}
  
  public void onOpened(SwipeLayout paramSwipeLayout) {
    int i = getAdapterPosition();
    this.mNotificationSelectorListener.onSwipeNotification(paramSwipeLayout, i);
  }
  
  public void onSlide(SwipeLayout paramSwipeLayout, float paramFloat) {}
  
  public void setBackgroundRead(NotificationDetail paramNotificationDetail) {
    int i;
    LinearLayout linearLayout = this.notificationLinearLayout;
    if (paramNotificationDetail.isStatusRead()) {
      i = ContextCompat.getColor(this.context, R.color.whiteMSG);
    } else {
      i = ContextCompat.getColor(this.context, R.color.gray_notification_read);
    } 
    linearLayout.setBackgroundColor(i);
    ImageView imageView = this.iconUnreadMessageImageView;
    if (paramNotificationDetail.isStatusRead()) {
      i = 8;
    } else {
      i = 0;
    } 
    imageView.setVisibility(i);
  }
  
  public void setDateTimeNotificationTextView(String paramString) {
    this.dateTimeNotificationTextView.setText(paramString);
  }
  
  public void setDescriptionNotificationTextView(String paramString) {
    this.descriptionNotificationTextView.setText(paramString);
  }
  
  public void setDetailNotificationImageView(int paramInt) {}
  
  public void setSwipeLayout(SwipeLayout paramSwipeLayout) {
    this.swipeLayout = paramSwipeLayout;
  }
  
  public void setTextUnreadTextView(NotificationDetail paramNotificationDetail) {
    String str;
    TextView textView = this.textUnreadTextView;
    if (paramNotificationDetail.isStatusRead()) {
      str = this.context.getResources().getString(R.string.unread_text);
    } else {
      str = this.context.getResources().getString(R.string.read_text);
    } 
    textView.setText(str);
  }
  
  public void setTimerNotificationImageView(ImageView paramImageView) {
    this.timerNotificationImageView = paramImageView;
  }
  
  public void setTimerNotificationVisibility(NotificationDetail paramNotificationDetail) {
    byte b;
    ImageView imageView = this.timerNotificationImageView;
    if (!Utils.isNullOrEmpty(paramNotificationDetail.getExpirationDate())) {
      b = 0;
    } else {
      b = 8;
    } 
    imageView.setVisibility(b);
  }
  
  public void setTitleNotificationTextView(String paramString) {
    this.titleNotificationTextView.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */