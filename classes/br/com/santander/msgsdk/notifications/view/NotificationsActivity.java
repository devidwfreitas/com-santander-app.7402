package br.com.santander.msgsdk.notifications.view;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.customView.SwipeLayout;
import br.com.santander.msgsdk.notifications.UnreadMessagesUtils;
import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import br.com.santander.msgsdk.notifications.viewModel.NotificationViewModel;
import br.com.santander.msgsdk.notifications.viewModel.NotificationViewModelReceiverInterface;
import java.util.ArrayList;
import java.util.List;

public class NotificationsActivity extends AppCompatActivity implements NotificationSelectorListener, NotificationViewModelReceiverInterface {
  private static final String TAG = NotificationsActivity.class.getName();
  
  private AlertDialog alertDialog = null;
  
  private Dialog dialogTransparent;
  
  private Error error;
  
  private List<NotificationDetail> list = new ArrayList<NotificationDetail>();
  
  private LinearLayoutManager mLayoutManager;
  
  private LinearLayout nothingNewLinearLayout;
  
  private NotificationDetail notification = new NotificationDetail();
  
  private NotificationAdapter notificationAdapter;
  
  private LinearLayout notificationError;
  
  private NotificationViewModel notificationViewModel = new NotificationViewModel(this);
  
  private LinearLayout notificationsLinearLayout;
  
  private RecyclerView notificationsRecyclerView;
  
  private List<NotificationDetail> notificationslist;
  
  private TextView searchEditText;
  
  private List<NotificationDetail> temporaryList;
  
  private Toolbar toolbar;
  
  private Intent sendNotificationParams(Intent paramIntent, NotificationDetail paramNotificationDetail, int paramInt) {
    String str2;
    if (paramNotificationDetail.getText() != null) {
      str2 = paramNotificationDetail.getText();
    } else {
      str2 = "";
    } 
    paramIntent.putExtra("text", str2);
    if (paramNotificationDetail.getTitle() != null) {
      str2 = paramNotificationDetail.getTitle();
    } else {
      str2 = "";
    } 
    paramIntent.putExtra("title", str2);
    if (paramNotificationDetail.getSentDate() != null) {
      str2 = paramNotificationDetail.getSentDate();
    } else {
      str2 = "";
    } 
    paramIntent.putExtra("sentDate", str2);
    if (paramNotificationDetail.getExpirationDate() != null) {
      str2 = paramNotificationDetail.getExpirationDate();
    } else {
      str2 = "";
    } 
    paramIntent.putExtra("expirationDate", str2);
    if (paramNotificationDetail.getUrl() != null) {
      str2 = paramNotificationDetail.getUrl();
    } else {
      str2 = "";
    } 
    paramIntent.putExtra("url", str2);
    if (paramNotificationDetail.getStimulumType() != null) {
      String str = paramNotificationDetail.getStimulumType();
      paramIntent.putExtra("stimulumType", str);
      paramIntent.putExtra("position", Integer.toString(paramInt));
      return paramIntent;
    } 
    String str1 = "";
    paramIntent.putExtra("stimulumType", str1);
    paramIntent.putExtra("position", Integer.toString(paramInt));
    return paramIntent;
  }
  
  private void setupView() {
    this.toolbar = (Toolbar)findViewById(R.id.toolbar_msg_notifications);
    setToolbar(this.toolbar);
    this.searchEditText = (TextView)findViewById(R.id.search_et);
    this.notificationsLinearLayout = (LinearLayout)findViewById(R.id.notifications_view_ll);
    this.nothingNewLinearLayout = (LinearLayout)findViewById(R.id.nothing_new_view);
    this.notificationError = (LinearLayout)findViewById(R.id.notification_error_view);
    this.notificationError.setVisibility(8);
    this.mLayoutManager = new LinearLayoutManager((Context)this);
    this.notificationsRecyclerView = (RecyclerView)findViewById(R.id.notifications_recycler_view);
    this.notificationsRecyclerView.setHasFixedSize(true);
    this.notificationsRecyclerView.setLayoutManager((RecyclerView.LayoutManager)this.mLayoutManager);
  }
  
  void filter(String paramString) {
    this.temporaryList = new ArrayList<NotificationDetail>();
    for (NotificationDetail notificationDetail : this.notificationslist) {
      if (notificationDetail.getSearchText().toLowerCase().contains(paramString.toLowerCase()) || notificationDetail.getSearchText().toLowerCase().equals(paramString.toLowerCase()))
        this.temporaryList.add(notificationDetail); 
    } 
    this.notificationAdapter.updateList(this.temporaryList);
  }
  
  public void getNotificationsResult(List<NotificationDetail> paramList, Error paramError) {
    this.notificationslist = paramList;
    UnreadMessagesUtils.countUnreadNotification((Context)this, paramList);
    this.error = paramError;
    if (paramError == null) {
      if (paramList.size() > 0) {
        this.nothingNewLinearLayout.setVisibility(8);
        this.notificationError.setVisibility(8);
        this.notificationsLinearLayout.setVisibility(0);
        this.notificationAdapter = new NotificationAdapter(getApplicationContext(), this.notificationslist, this);
        this.notificationsRecyclerView.setAdapter(this.notificationAdapter);
        this.notificationAdapter.notifyDataSetChanged();
      } 
      if (this.dialogTransparent.isShowing())
        this.dialogTransparent.dismiss(); 
      return;
    } 
    if (this.dialogTransparent.isShowing())
      this.dialogTransparent.dismiss(); 
    this.nothingNewLinearLayout.setVisibility(8);
    this.notificationError.setVisibility(0);
    this.notificationsLinearLayout.setVisibility(8);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1 && paramInt2 == -1) {
      paramInt1 = Integer.parseInt(paramIntent.getStringExtra("position"));
      if (paramIntent.getBooleanExtra("excluded", false)) {
        updateReadOrDelete(paramInt1, true, true);
      } else {
        updateReadOrDelete(paramInt1, false, false);
      } 
    } 
    this.notificationAdapter.notifyDataSetChanged();
  }
  
  public void onClickDeleteMessage(int paramInt, SwipeLayout paramSwipeLayout) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().swipeNotificationOptionDelete(); 
    this.nothingNewLinearLayout.setVisibility(8);
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    builder.setTitle(R.string.msg_dialog_title_delete_notification).setMessage(R.string.msg_dialog_delete_notification).setNegativeButton(R.string.msg_dialog_calcel_button, new NotificationsActivity$4(this, paramSwipeLayout)).setPositiveButton(R.string.msg_dialog_continue_button, new NotificationsActivity$3(this, paramInt, paramSwipeLayout));
    builder.create().show();
  }
  
  public void onClickNotification(int paramInt) {
    List<NotificationDetail> list;
    Intent intent = new Intent((Context)this, NotificationRouter.class);
    if (this.temporaryList != null) {
      list = this.temporaryList;
    } else {
      list = this.notificationslist;
    } 
    this.list = list;
    this.notification = this.list.get(paramInt);
    if (!this.notification.isStatusRead())
      UnreadMessagesUtils.setReadNotification((Context)this); 
    updateReadOrDelete(paramInt, false, true);
    this.notificationAdapter.notifyDataSetChanged();
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().notificationTypeAction(this.notification.getTitle()); 
    startActivityForResult(sendNotificationParams(intent, this.notification, paramInt), 1);
  }
  
  public void onClickTimerNotification(int paramInt) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    View view = getLayoutInflater().inflate(R.layout.dialog_timer, null);
    builder.setView(view);
    this.alertDialog = builder.create();
    this.alertDialog.setCanceledOnTouchOutside(false);
    this.alertDialog.show();
    ((LinearLayout)view.findViewById(R.id.close_timer_dialog_ll)).setOnClickListener(new NotificationsActivity$2(this));
  }
  
  public void onClickUnreadMessage(int paramInt, SwipeLayout paramSwipeLayout) {
    boolean bool;
    List<NotificationDetail> list;
    if (this.notificationslist != null) {
      list = this.notificationslist;
    } else {
      list = this.temporaryList;
    } 
    this.list = list;
    this.notification = this.list.get(paramInt);
    if (this.notification.isStatusRead()) {
      UnreadMessagesUtils.setUnreadNotification((Context)this);
    } else {
      UnreadMessagesUtils.setReadNotification((Context)this);
    } 
    NotificationDetail notificationDetail = this.notification;
    if (!this.notification.isStatusRead()) {
      bool = true;
    } else {
      bool = false;
    } 
    notificationDetail.setStatusRead(bool);
    for (NotificationDetail notificationDetail1 : this.notificationslist) {
      if (this.notification.getUuid().equals(notificationDetail1.getUuid())) {
        int i = this.notificationslist.indexOf(this.notification);
        ((NotificationDetail)this.notificationslist.get(i)).setStatusRead(this.notification.isStatusRead());
      } 
    } 
    updateReadOrDelete(paramInt, false, this.notification.isStatusRead());
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().swipeNotificationOptionReadUnread(this.notification.isStatusRead()); 
    paramSwipeLayout.close(true);
    this.notificationAdapter.notifyDataSetChanged();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(R.layout.activity_notifications);
    setupView();
    setLoading();
    this.notificationViewModel.getNotifications();
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().menuNotificationsAction(); 
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    if (paramMenuItem.getItemId() == 16908332) {
      onBackPressed();
      return true;
    } 
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onResume() {
    super.onResume();
    this.searchEditText.addTextChangedListener(new NotificationsActivity$1(this));
  }
  
  public void onSwipeNotification(SwipeLayout paramSwipeLayout, int paramInt) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().swipeNotificationOptions(); 
  }
  
  public void setLoading() {
    this.dialogTransparent = new Dialog((Context)this, R.style.SantanderTheme);
    View view = LayoutInflater.from((Context)this).inflate(R.layout.loading_frame_layout, null);
    this.dialogTransparent.requestWindowFeature(1);
    this.dialogTransparent.getWindow().setBackgroundDrawableResource(R.color.background_dialog_translucent);
    this.dialogTransparent.setContentView(view);
    this.dialogTransparent.setOnKeyListener(new NotificationsActivity$5(this));
    if (this.notificationslist == null || this.error == null)
      this.dialogTransparent.show(); 
  }
  
  public void setToolbar(Toolbar paramToolbar) {
    setSupportActionBar(paramToolbar);
    if (getSupportActionBar() != null) {
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
      getSupportActionBar().setTitle(R.string.msg_toolbar_notificatios_title);
    } 
    if (MSGSDK.getInstance().getToolbarColor() != 0)
      paramToolbar.setBackgroundColor(ContextCompat.getColor((Context)this, MSGSDK.getInstance().getToolbarColor())); 
  }
  
  void updateReadOrDelete(int paramInt, boolean paramBoolean1, boolean paramBoolean2) {
    List<NotificationDetail> list;
    if (this.temporaryList != null) {
      list = this.temporaryList;
    } else {
      list = this.notificationslist;
    } 
    this.list = list;
    if (paramBoolean1) {
      if (!((NotificationDetail)this.list.get(paramInt)).isStatusRead())
        UnreadMessagesUtils.setReadNotification((Context)this); 
      ((NotificationDetail)this.list.get(paramInt)).setStatusExcluded(true);
      this.notificationViewModel.setUpdateStatusReadOrDelete(paramInt, this.list.get(paramInt));
      this.notificationViewModel.updateStatusDeleteResult(paramInt, null);
      try {
        this.notificationslist.remove(this.list.get(paramInt));
      } catch (IndexOutOfBoundsException indexOutOfBoundsException) {
        Log.d(TAG, "updateReadOrDelete IndexOutOfBoundsException " + indexOutOfBoundsException);
      } catch (Exception exception) {
        Log.d(TAG, "updateReadOrDelete Exception " + exception);
      } 
    } else {
      ((NotificationDetail)this.list.get(paramInt)).setStatusRead(paramBoolean2);
      this.notificationViewModel.setUpdateStatusReadOrDelete(paramInt, this.list.get(paramInt));
      this.notificationViewModel.updateStatusReadResult(paramInt, null);
    } 
    if (this.temporaryList != null && this.temporaryList.size() > 0)
      filter(this.searchEditText.getText().toString()); 
    this.notificationAdapter.notifyDataSetChanged();
  }
  
  public void updateStatusDeleteResult(int paramInt, Error paramError) {
    List<NotificationDetail> list;
    if (this.temporaryList != null) {
      list = this.temporaryList;
    } else {
      list = this.notificationslist;
    } 
    this.list = list;
    if (paramError == null) {
      this.notificationAdapter.updateList(this.list);
      if (this.dialogTransparent.isShowing())
        this.dialogTransparent.dismiss(); 
      return;
    } 
    if (this.dialogTransparent.isShowing())
      this.dialogTransparent.dismiss(); 
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    builder.setTitle(R.string.msg_dialog_error_title).setMessage(R.string.msg_dialog_error_excluded_notification).setPositiveButton(R.string.msg_dialog_finish_button, new NotificationsActivity$7(this));
    builder.create().show();
  }
  
  public void updateStatusReadResult(int paramInt, Error paramError) {
    List<NotificationDetail> list;
    if (this.temporaryList != null) {
      list = this.temporaryList;
    } else {
      list = this.notificationslist;
    } 
    this.list = list;
    if (paramError == null) {
      this.notificationAdapter.updateList(this.list);
      if (this.dialogTransparent.isShowing())
        this.dialogTransparent.dismiss(); 
      return;
    } 
    if (this.dialogTransparent.isShowing())
      this.dialogTransparent.dismiss(); 
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    builder.setTitle(R.string.msg_dialog_error_title).setMessage(R.string.msg_dialog_error_update_notification).setPositiveButton(R.string.msg_dialog_finish_button, new NotificationsActivity$6(this));
    builder.create().show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationsActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */