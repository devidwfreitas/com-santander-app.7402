package br.com.santander.msgsdk.configPanel.view;

import android.app.Dialog;
import android.content.Context;
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
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import br.com.santander.msgsdk.MSG;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.configPanel.model.Category;
import br.com.santander.msgsdk.configPanel.model.Config;
import br.com.santander.msgsdk.configPanel.viewModel.ConfigPanelViewModel;
import br.com.santander.msgsdk.configPanel.viewModel.ConfigPanelViewModelReceiverInterface;
import br.com.santander.msgsdk.util.Preferences;
import br.com.santander.uisdk.SantanderSwitch;
import java.util.List;

public class ConfigPanelActivity extends AppCompatActivity implements MenuSelectorListener, ConfigPanelViewModelReceiverInterface {
  private String TAG = ConfigPanelActivity.class.getName();
  
  private List<Category> categoryList;
  
  private boolean check = false;
  
  private final Config config = new Config();
  
  private ConfigCategoryAdapter configCategoryAdapter;
  
  private RecyclerView configMenuRecyclerView;
  
  private LinearLayout configPanelLinearLayout;
  
  private LinearLayout configPanelRoot;
  
  private ConfigPanelViewModel configPanelViewModel = new ConfigPanelViewModel(this);
  
  private Dialog dialogTransparent;
  
  private Error error;
  
  private FrameLayout loadingFrameLayout;
  
  private ProgressBar loadingPanelProgressBar;
  
  private LinearLayoutManager mLayoutManager;
  
  private MSG msgsdk = MSGSDK.getInstance();
  
  private LinearLayout notificationError;
  
  private int pos = 0;
  
  private Toolbar toolbarMSG;
  
  private MSGSDK.UpdateStatusInterface updateStatusInterface;
  
  private void setupView() {
    this.toolbarMSG = (Toolbar)findViewById(R.id.toolbar_msg);
    setToolbar(this.toolbarMSG);
    this.notificationError = (LinearLayout)findViewById(R.id.notification_error_view);
    this.configPanelRoot = (LinearLayout)findViewById(R.id.config_panel_root);
    this.configPanelLinearLayout = (LinearLayout)findViewById(R.id.config_panel_ll);
    this.mLayoutManager = new LinearLayoutManager((Context)this);
    this.configMenuRecyclerView = (RecyclerView)findViewById(R.id.menu_config_panel_rv);
    this.configMenuRecyclerView.setHasFixedSize(true);
    this.configMenuRecyclerView.setLayoutManager((RecyclerView.LayoutManager)this.mLayoutManager);
  }
  
  public void getReceivedConfigList(List<Category> paramList, Error paramError) {
    this.categoryList = paramList;
    this.error = paramError;
    if (paramError == null) {
      this.configCategoryAdapter = new ConfigCategoryAdapter(getApplicationContext(), this.categoryList, this);
      this.configMenuRecyclerView.setAdapter(this.configCategoryAdapter);
      if (this.dialogTransparent.isShowing())
        this.dialogTransparent.dismiss(); 
      this.configPanelRoot.setVisibility(0);
      this.notificationError.setVisibility(8);
      return;
    } 
    if (this.dialogTransparent.isShowing())
      this.dialogTransparent.dismiss(); 
    this.configPanelRoot.setVisibility(8);
    this.notificationError.setVisibility(0);
  }
  
  public void getResultUpdateStatus(Error paramError) {
    if (paramError != null);
  }
  
  public void onChangeSwitchButton(SantanderSwitch paramSantanderSwitch, boolean paramBoolean, int paramInt) {
    Category category = this.categoryList.get(paramInt);
    this.check = category.isMembershipStatus();
    this.pos = paramInt;
    if (!paramBoolean) {
      AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
      View view = getLayoutInflater().inflate(R.layout.dialog_msg, null);
      builder.setView(view);
      TextView textView1 = (TextView)view.findViewById(R.id.cancel_dialog_button);
      TextView textView2 = (TextView)view.findViewById(R.id.open_browser_dialog_button);
      TextView textView3 = (TextView)view.findViewById(R.id.dialog_msg_title);
      TextView textView4 = (TextView)view.findViewById(R.id.dialog_description_tv);
      AlertDialog alertDialog = builder.create();
      alertDialog.setCanceledOnTouchOutside(false);
      textView3.setText("Atenção");
      textView4.setText(category.getAlertMessage());
      textView1.setOnClickListener(new ConfigPanelActivity$3(this, paramSantanderSwitch, category, alertDialog));
      textView2.setOnClickListener(new ConfigPanelActivity$4(this, paramSantanderSwitch, category, alertDialog));
      builder.setOnDismissListener(new ConfigPanelActivity$5(this, alertDialog));
      alertDialog.show();
      return;
    } 
    paramSantanderSwitch.setChecked(true, false);
    category.setMembershipStatus(true);
    this.configPanelViewModel.setStatus(category);
    trackingConfigNotificationAction(category);
    Log.d(this.TAG, "category active: " + category.isMembershipStatus());
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(R.layout.activity_msg_config_panel);
    setLoading();
    setupView();
    this.configPanelViewModel.getConfigPanelList();
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().menuConfigPanelAction(); 
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
    subscribe();
  }
  
  public void setLoading() {
    this.dialogTransparent = new Dialog((Context)this, R.style.SantanderTheme);
    View view = LayoutInflater.from((Context)this).inflate(R.layout.loading_frame_layout, null);
    this.dialogTransparent.requestWindowFeature(1);
    this.dialogTransparent.getWindow().setBackgroundDrawableResource(R.color.background_loading_translucent);
    this.dialogTransparent.setContentView(view);
    this.dialogTransparent.setOnKeyListener(new ConfigPanelActivity$1(this));
    if (this.categoryList == null || this.error == null)
      this.dialogTransparent.show(); 
  }
  
  public void setToolbar(Toolbar paramToolbar) {
    setSupportActionBar(paramToolbar);
    if (getSupportActionBar() != null) {
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
      getSupportActionBar().setTitle(R.string.msg_toolbar_config_panel_title);
    } 
    if (MSGSDK.getInstance().getToolbarColor() != 0)
      paramToolbar.setBackgroundColor(ContextCompat.getColor((Context)this, MSGSDK.getInstance().getToolbarColor())); 
  }
  
  public void subscribe() {
    Log.d(this.TAG, "Subscribe Preferences: " + Preferences.isSubscribe(getApplicationContext()));
    if (!Preferences.isSubscribe(getApplicationContext()))
      MSGSDK.getInstance().subscribeArch(new ConfigPanelActivity$2(this)); 
  }
  
  void trackingConfigNotificationAction(Category paramCategory) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().configNotificationAction(paramCategory.getTitle(), paramCategory.isMembershipStatus()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\view\ConfigPanelActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */