package br.com.santander.msgsdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.ColorRes;
import android.support.v4.app.NotificationManagerCompat;
import android.support.v7.app.AlertDialog;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import br.com.santander.msgsdk.configPanel.model.Category;
import br.com.santander.msgsdk.configPanel.view.ConfigPanelActivity;
import br.com.santander.msgsdk.domain.NotificationData;
import br.com.santander.msgsdk.gcm.RegistrationIntentServiceMSG;
import br.com.santander.msgsdk.notifications.UnreadMessagesUtils;
import br.com.santander.msgsdk.notifications.view.NotificationsActivity;
import br.com.santander.msgsdk.request.ConnectorEnvironment;
import br.com.santander.msgsdk.request.RequestConfigPanel;
import br.com.santander.msgsdk.request.RequestConfigPanelUpdate;
import br.com.santander.msgsdk.request.RequestNotificationReadOrDeleted;
import br.com.santander.msgsdk.request.RequestNotifications;
import br.com.santander.msgsdk.request.RequestOfflineMessages;
import br.com.santander.msgsdk.request.RequestStatus;
import br.com.santander.msgsdk.request.RequestSubscribe;
import br.com.santander.msgsdk.request.RequestUnsubscribe;
import br.com.santander.msgsdk.util.Constants;
import br.com.santander.msgsdk.util.EncryptorUtil;
import br.com.santander.msgsdk.util.Preferences;
import br.com.santander.msgsdk.util.Utils;
import czr;
import ie;
import ir;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

public final class MSGSDK implements MSG {
  private static final String TAG = "MSGSDK";
  
  private static MSG instance;
  
  private static String statusRegistered = Constants.EMPTY;
  
  private static boolean success = false;
  
  private String appId;
  
  private String appKey;
  
  private Authentication authentication;
  
  private ConnectorEnvironment connectorEnvironment;
  
  private Context context;
  
  private String hashUser;
  
  private ie hubConnector;
  
  private IdProvider idProvider;
  
  private czr instanceID;
  
  private MSGSDK$InternalNotificationListener internalNotificationListener;
  
  private PlayServices playServices;
  
  private String senderId;
  
  @ColorRes
  private int toolbarColor = 0;
  
  private Tracking tracking;
  
  public static MSG getInstance() {
    if (instance == null)
      instance = new MSGSDK(); 
    return instance;
  }
  
  public static void sendUpdateStatus(Context paramContext, String paramString1, String paramString2) {
    int i = 0;
    if (Utils.isNullOrEmpty(paramString1) || Utils.isNullOrEmpty(paramString2)) {
      paramString1 = Preferences.getStatusToSend(paramContext);
    } else {
      paramString1 = Preferences.getStatusToSend(paramContext).concat(paramString1).concat(";").concat(paramString2).concat(";");
    } 
    Log.d("MSGSDK", "updateStatus - on shared to send --> " + paramString1);
    String[] arrayOfString = paramString1.split(";|;\\s");
    Preferences.clearStatusToSend(paramContext);
    if (arrayOfString.length > 1) {
      int j;
      for (j = 0; j < arrayOfString.length; j++) {
        paramString2 = arrayOfString[j];
        String str = arrayOfString[++j];
        i++;
        statusRegistered = statusRegistered.concat(paramString2).concat(";").concat(str).concat(";");
        getInstance().updateStatusArch(paramString2, str, "", new MSGSDK$1(paramContext, i, paramString2, str));
        if (!success && !Utils.isNullOrEmpty(statusRegistered)) {
          Log.d("MSGSDK", "updateStatus - preferences: " + statusRegistered);
          Preferences.setStatusToSend(paramContext, statusRegistered);
          statusRegistered = Constants.EMPTY;
        } 
      } 
    } 
  }
  
  public static void updateStatus(Context paramContext, String paramString1, String paramString2, String paramString3) {
    if (!Utils.isNullOrEmpty(paramString1) && !Utils.isNullOrEmpty(paramString2))
      sendUpdateStatus(paramContext, paramString1, paramString2); 
  }
  
  public boolean areNotificationsEnabled() {
    return NotificationManagerCompat.from(this.context).areNotificationsEnabled();
  }
  
  public NotificationData fromBundle(Bundle paramBundle) {
    return (paramBundle != null) ? new NotificationData(paramBundle) : null;
  }
  
  public NotificationData fromIntent(Intent paramIntent) {
    return (paramIntent != null) ? fromBundle(paramIntent.getExtras()) : null;
  }
  
  public String getAppId() {
    return (this.idProvider != null) ? this.idProvider.getAppId() : this.appId;
  }
  
  public String getAppKey() {
    return (this.idProvider != null) ? this.idProvider.getAppKey() : this.appKey;
  }
  
  public Authentication getAuthentication() {
    return this.authentication;
  }
  
  public ConnectorEnvironment getConnectorEnvironment() {
    return this.connectorEnvironment;
  }
  
  public Context getContext() {
    return this.context;
  }
  
  @SuppressLint({"HardwareIds"})
  public String getDeviceId() {
    TelephonyManager telephonyManager = (TelephonyManager)this.context.getSystemService("phone");
    return (telephonyManager != null) ? telephonyManager.getDeviceId() : null;
  }
  
  public ie getHubConnector() {
    return this.hubConnector;
  }
  
  public MSGSDK$InternalNotificationListener getInternalNotificationListener() {
    return this.internalNotificationListener;
  }
  
  public String getSenderId() {
    return (this.idProvider != null) ? this.idProvider.getSenderId() : this.senderId;
  }
  
  public String getToken() {
    try {
      return this.instanceID.b(getSenderId(), "GCM", null);
    } catch (IOException iOException) {
      Log.e("MSGSDK", iOException.getMessage(), iOException);
      return "";
    } 
  }
  
  public int getToolbarColor() {
    return this.toolbarColor;
  }
  
  public Tracking getTracking() {
    return this.tracking;
  }
  
  public int getUnreadNotificationsNumber(Context paramContext) {
    return UnreadMessagesUtils.getUnreadNotificationsNumber(paramContext);
  }
  
  public String getUserId() {
    return (this.idProvider != null) ? this.idProvider.getUserId() : getDeviceId();
  }
  
  public void init(Context paramContext, ie paramie, String paramString, boolean paramBoolean) {
    this.context = paramContext;
    if (paramBoolean) {
      this.senderId = paramContext.getString(R$string.msg_sender_id_prod);
      this.appKey = paramContext.getString(R$string.msg_app_key_prod);
      this.appId = paramContext.getString(R$string.msg_app_id_prod);
    } else {
      this.senderId = paramContext.getString(R$string.msg_sender_id_homol);
      this.appKey = paramContext.getString(R$string.msg_app_key_homol);
      this.appId = paramContext.getString(R$string.msg_app_id_homol);
    } 
    try {
      this.hashUser = EncryptorUtil.SHAGenerate(paramString);
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      this.hashUser = "";
      Log.d("MSGSDK", "NoSuchAlgorithmException " + noSuchAlgorithmException.getMessage());
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      this.hashUser = "";
      Log.d("MSGSDK", "UnsupportedEncodingException " + unsupportedEncodingException.getMessage());
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
    } 
    this.hubConnector = paramie;
    this.instanceID = czr.c(paramContext);
    this.playServices = new PlayServices(paramContext, this.hashUser);
    this.playServices.start();
  }
  
  public void init(Context paramContext, ie paramie, String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    init(paramContext, paramie, paramString, paramBoolean1);
    SharedPreferences sharedPreferences = paramContext.getSharedPreferences("spUtFile", 0);
    if (paramBoolean2 && !sharedPreferences.getBoolean("sput", false))
      RegistrationIntentServiceMSG.start(paramContext, true); 
    sendUpdateStatus(paramContext, null, null);
    Log.d("MSGSDK", "MSGSDK_VERSION: 2.1.12");
  }
  
  public void initConfigPanel(Activity paramActivity) {
    if (NotificationManagerCompat.from((Context)paramActivity).areNotificationsEnabled()) {
      Intent intent = new Intent((Context)paramActivity, ConfigPanelActivity.class);
      intent.setFlags(268435456);
      paramActivity.startActivity(intent);
      return;
    } 
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)paramActivity);
    View view = paramActivity.getLayoutInflater().inflate(R$layout.dialog_msg, null);
    builder.setView(view);
    TextView textView1 = (TextView)view.findViewById(R$id.cancel_dialog_button);
    TextView textView2 = (TextView)view.findViewById(R$id.open_browser_dialog_button);
    ((TextView)view.findViewById(R$id.dialog_description_tv)).setText("Habilite o recebimento de notificações e tenha acesso ao painel para personalizar as mensagens recebidas.");
    AlertDialog alertDialog = builder.create();
    alertDialog.setCanceledOnTouchOutside(false);
    textView1.setOnClickListener(new MSGSDK$6(this, alertDialog));
    textView2.setOnClickListener(new MSGSDK$7(this, paramActivity, alertDialog));
    builder.setOnDismissListener(new MSGSDK$8(this, alertDialog));
    alertDialog.show();
  }
  
  public void initNotifications(Activity paramActivity) {
    paramActivity.startActivity(new Intent((Context)paramActivity, NotificationsActivity.class));
  }
  
  public void initOffline(Context paramContext, ie paramie, boolean paramBoolean) {
    if (paramie != null)
      this.hubConnector = paramie; 
    this.context = paramContext;
    if (paramBoolean) {
      this.appKey = paramContext.getString(R$string.msg_app_key_prod);
      return;
    } 
    this.appKey = paramContext.getString(R$string.msg_app_key_homol);
  }
  
  public boolean isPlayServiceSuccess() {
    return this.playServices.isSuccess();
  }
  
  public void offlineMessagesArch(MSGSDK$CallbackOfflineMessage paramMSGSDK$CallbackOfflineMessage) {
    ir ir = (new RequestOfflineMessages(this)).createHubRequest();
    try {
      this.hubConnector.a(ir, new MSGSDK$5(this, paramMSGSDK$CallbackOfflineMessage));
      return;
    } catch (ExecutionException executionException) {
      Log.d("MSGSDK", "ExecutionException " + executionException.getMessage());
      return;
    } catch (InterruptedException interruptedException) {
      Log.d("MSGSDK", "InterruptedException " + interruptedException.getMessage());
      return;
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
  }
  
  public void requestConfigPanel(String paramString, MSGSDK$CallbackRequestConfigPanel paramMSGSDK$CallbackRequestConfigPanel) {
    ir ir = (new RequestConfigPanel(this, getAppId())).createHubRequest();
    try {
      if (this.hubConnector == null)
        return; 
      this.hubConnector.a(ir, new MSGSDK$9(this, paramMSGSDK$CallbackRequestConfigPanel));
      return;
    } catch (ExecutionException null) {
    
    } catch (InterruptedException null) {
    
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
    Log.d("MSGSDK", "ExecutionException | InterruptedException " + exception.getMessage());
  }
  
  public void requestConfigPanelUpdate(String paramString, Category paramCategory, MSGSDK$CallbackRequestConfigPanelUpdate paramMSGSDK$CallbackRequestConfigPanelUpdate) {
    ir ir = (new RequestConfigPanelUpdate(this, getAppId(), paramCategory)).createHubRequest();
    if (this.hubConnector == null)
      return; 
    try {
      this.hubConnector.a(ir, new MSGSDK$10(this, paramMSGSDK$CallbackRequestConfigPanelUpdate));
      return;
    } catch (ExecutionException null) {
    
    } catch (InterruptedException null) {
    
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
    Log.d("MSGSDK", "ExecutionException | InterruptedException " + exception.getMessage());
  }
  
  public void requestNotifications(String paramString, MSGSDK$CallbackRequestNotifications paramMSGSDK$CallbackRequestNotifications) {
    ir ir = (new RequestNotifications(getAppId(), this)).createHubRequest();
    if (this.hubConnector == null)
      return; 
    try {
      this.hubConnector.a(ir, new MSGSDK$11(this, paramMSGSDK$CallbackRequestNotifications));
      return;
    } catch (ExecutionException executionException) {
    
    } catch (InterruptedException interruptedException) {}
    Log.d("MSGSDK", "ExecutionException | InterruptedException " + interruptedException.getMessage());
  }
  
  public void requestUpdateStatusReadOrDelete(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, MSGSDK$CallbackUpdateStatusReadOrDelete paramMSGSDK$CallbackUpdateStatusReadOrDelete) {
    ir ir = (new RequestNotificationReadOrDeleted(this, paramString1, paramString2, paramBoolean1, paramBoolean2)).createHubRequest();
    if (this.hubConnector == null)
      return; 
    try {
      this.hubConnector.a(ir, new MSGSDK$12(this, paramMSGSDK$CallbackUpdateStatusReadOrDelete));
      return;
    } catch (ExecutionException null) {
    
    } catch (InterruptedException null) {
    
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
    Log.d("MSGSDK", "ExecutionException | InterruptedException " + exception.getMessage());
  }
  
  public void saveUserPreferences() {
    Preferences.setUserRegisteredCloudMessaging(this.context, this.hashUser);
  }
  
  public void sendNotification(Context paramContext, NotificationData paramNotificationData) {
    updateStatusReceived(paramContext, paramNotificationData);
    Notification.sendNotification(paramContext, paramNotificationData);
  }
  
  public void setAuthentication(Authentication paramAuthentication) {
    this.authentication = paramAuthentication;
  }
  
  public void setConnectorEnvironment(ConnectorEnvironment paramConnectorEnvironment) {
    this.connectorEnvironment = paramConnectorEnvironment;
  }
  
  public void setHubConnector(ie paramie) {}
  
  public void setIdProvider(IdProvider paramIdProvider) {
    this.idProvider = paramIdProvider;
  }
  
  public void setInternalNotificationListener(MSGSDK$InternalNotificationListener paramMSGSDK$InternalNotificationListener) {
    this.internalNotificationListener = paramMSGSDK$InternalNotificationListener;
  }
  
  public void setToolbarColor(@ColorRes int paramInt) {
    this.toolbarColor = paramInt;
  }
  
  public void setTracking(Tracking paramTracking) {
    this.tracking = paramTracking;
  }
  
  public void showPlayServiceError(Activity paramActivity) {
    this.playServices.showErrorDialog(paramActivity);
  }
  
  public void subscribeArch(MSGSDK$Callback paramMSGSDK$Callback) {
    ir ir = (new RequestSubscribe(this)).createHubRequest();
    try {
      this.hubConnector.a(ir, new MSGSDK$2(this, paramMSGSDK$Callback));
      return;
    } catch (ExecutionException executionException) {
      Log.d("MSGSDK", "ExecutionException " + executionException.getMessage());
      return;
    } catch (InterruptedException interruptedException) {
      Log.d("MSGSDK", "InterruptedException " + interruptedException.getMessage());
      return;
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
  }
  
  public void unsubscribeArch(MSGSDK$Callback paramMSGSDK$Callback) {
    UnreadMessagesUtils.clearBadgeNumber(this.context);
    ir ir = (new RequestUnsubscribe(this)).createHubRequest();
    try {
      this.hubConnector.a(ir, new MSGSDK$3(this, paramMSGSDK$Callback));
      return;
    } catch (ExecutionException executionException) {
      Log.d("MSGSDK", "ExecutionException " + executionException.getMessage());
      return;
    } catch (InterruptedException interruptedException) {
      Log.d("MSGSDK", "InterruptedException " + interruptedException.getMessage());
      return;
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
  }
  
  public void updateStatusArch(String paramString1, String paramString2, String paramString3, MSGSDK$CallbackUpdateStatus paramMSGSDK$CallbackUpdateStatus) {
    ir ir = (new RequestStatus(this, paramString1, paramString2, paramString3)).createHubRequest();
    if (this.hubConnector == null)
      return; 
    try {
      this.hubConnector.a(ir, new MSGSDK$4(this, paramMSGSDK$CallbackUpdateStatus));
      return;
    } catch (ExecutionException executionException) {
      Log.d("MSGSDK", "ExecutionException " + executionException.getMessage());
      return;
    } catch (InterruptedException interruptedException) {
      Log.d("MSGSDK", "InterruptedException " + interruptedException.getMessage());
      return;
    } catch (Exception exception) {
      Log.d("MSGSDK", "Exception " + exception.getMessage());
      return;
    } 
  }
  
  public void updateStatusReceived(Context paramContext, NotificationData paramNotificationData) {
    updateStatus(paramContext, paramNotificationData.getPushId(), "RECEIVED", "");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */