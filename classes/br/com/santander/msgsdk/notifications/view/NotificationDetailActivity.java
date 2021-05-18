package br.com.santander.msgsdk.notifications.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.notifications.model.NotificationDetail;
import br.com.santander.msgsdk.util.Utils;

public class NotificationDetailActivity extends AppCompatActivity implements View.OnClickListener {
  private static String TAG = NotificationDetailActivity.class.getName();
  
  private AlertDialog alertDialog = null;
  
  private TextView dateDetailTextView;
  
  private TextView descriptionNotificationDetailTextView;
  
  private TextView expiredDateDetailTextView;
  
  private TextView moreOptionsDetailTextView;
  
  private NotificationDetail notificationDetail;
  
  private String position;
  
  private TextView textExpiredDateDetailTextView;
  
  private ImageView timerImageView;
  
  private TextView titleDetailTextView;
  
  private Toolbar toolbarDetail;
  
  private NotificationDetail getNotificationFromIntent(Intent paramIntent) {
    NotificationDetail notificationDetail = new NotificationDetail();
    notificationDetail.setText(paramIntent.getExtras().getString("text"));
    notificationDetail.setTitle(paramIntent.getExtras().getString("title"));
    notificationDetail.setSentDate(paramIntent.getExtras().getString("sentDate"));
    notificationDetail.setExpirationDate(paramIntent.getExtras().getString("expirationDate"));
    this.position = paramIntent.getExtras().getString("position");
    return notificationDetail;
  }
  
  private void setToolbar(Toolbar paramToolbar) {
    setSupportActionBar(paramToolbar);
    if (getSupportActionBar() != null) {
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
      getSupportActionBar().setTitle(R.string.msg_toolbar_notification_detail_title);
    } 
    if (MSGSDK.getInstance().getToolbarColor() != 0)
      paramToolbar.setBackgroundColor(ContextCompat.getColor((Context)this, MSGSDK.getInstance().getToolbarColor())); 
  }
  
  private void setupView() {
    this.toolbarDetail = (Toolbar)findViewById(R.id.toolbar_detail_notification);
    setToolbar(this.toolbarDetail);
    this.titleDetailTextView = (TextView)findViewById(R.id.title_detail_tv);
    this.dateDetailTextView = (TextView)findViewById(R.id.date_detail_tv);
    this.textExpiredDateDetailTextView = (TextView)findViewById(R.id.text_expired_date_detail_tv);
    this.expiredDateDetailTextView = (TextView)findViewById(R.id.expire_date_detail_tv);
    this.descriptionNotificationDetailTextView = (TextView)findViewById(R.id.description_notification_detail_tv);
    this.timerImageView = (ImageView)findViewById(R.id.timer_detail_imv);
    this.moreOptionsDetailTextView = (TextView)findViewById(R.id.more_options_detail_tv);
    this.moreOptionsDetailTextView.setOnClickListener(this);
    NotificationDetail notificationDetail = getNotificationFromIntent(getIntent());
    this.titleDetailTextView.setText(notificationDetail.getTitle());
    this.descriptionNotificationDetailTextView.setText(notificationDetail.getText());
    this.dateDetailTextView.setText(Utils.convertDate(notificationDetail.getSentDate()));
    if (Utils.isNullOrEmpty(notificationDetail.getExpirationDate())) {
      this.textExpiredDateDetailTextView.setVisibility(8);
      this.expiredDateDetailTextView.setVisibility(8);
      this.timerImageView.setVisibility(8);
      return;
    } 
    if (Utils.expiredDate(notificationDetail.getExpirationDate())) {
      this.textExpiredDateDetailTextView.setVisibility(0);
      this.expiredDateDetailTextView.setVisibility(0);
      this.textExpiredDateDetailTextView.setText("Expirado em: ");
      this.expiredDateDetailTextView.setText(Utils.convertDate(notificationDetail.getExpirationDate()));
      this.timerImageView.setVisibility(0);
      return;
    } 
    this.textExpiredDateDetailTextView.setVisibility(0);
    this.expiredDateDetailTextView.setVisibility(0);
    this.textExpiredDateDetailTextView.setText("Expira em: ");
    this.expiredDateDetailTextView.setText(Utils.convertDate(notificationDetail.getExpirationDate()));
    this.timerImageView.setVisibility(0);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().notificationDetailedBackAction(); 
  }
  
  public void onClick(View paramView) {
    if (paramView.getId() == R.id.more_options_detail_tv) {
      if (MSGSDK.getInstance().getTracking() != null)
        MSGSDK.getInstance().getTracking().notificationDetailedOptions(); 
      AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
      paramView = getLayoutInflater().inflate(R.layout.options_notification_detail_view, null);
      builder.setView(paramView);
      this.alertDialog = builder.create();
      this.alertDialog.setCanceledOnTouchOutside(false);
      Window window = this.alertDialog.getWindow();
      WindowManager.LayoutParams layoutParams = window.getAttributes();
      layoutParams.gravity = 80;
      layoutParams.flags &= 0xFFFFFFFD;
      window.setAttributes(layoutParams);
      this.alertDialog.show();
      ((TextView)paramView.findViewById(R.id.option_cancel_tv)).setOnClickListener(new NotificationDetailActivity$1(this));
      ((LinearLayout)paramView.findViewById(R.id.option_unread_ll)).setOnClickListener(new NotificationDetailActivity$2(this));
      ((LinearLayout)paramView.findViewById(R.id.option_delete_ll)).setOnClickListener(new NotificationDetailActivity$3(this));
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(R.layout.activity_notification_detail);
    setupView();
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
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */