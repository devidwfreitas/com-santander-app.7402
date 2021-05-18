.class Lcom/ca/org/acra/CrashReportDialog$1;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/org/acra/CrashReportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/org/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lcom/ca/org/acra/CrashReportDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/org/acra/CrashReportDialog;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 155
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-static {v7}, Lcom/ca/org/acra/CrashReportDialog;->access$000(Lcom/ca/org/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-static {v7}, Lcom/ca/org/acra/CrashReportDialog;->access$000(Lcom/ca/org/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "comment":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-static {v7}, Lcom/ca/org/acra/CrashReportDialog;->access$100(Lcom/ca/org/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-static {v7}, Lcom/ca/org/acra/CrashReportDialog;->access$200(Lcom/ca/org/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 160
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-static {v7}, Lcom/ca/org/acra/CrashReportDialog;->access$200(Lcom/ca/org/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "usrEmail":Ljava/lang/String;
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-static {v7}, Lcom/ca/org/acra/CrashReportDialog;->access$100(Lcom/ca/org/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 162
    .local v4, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "acra.user.email"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    .end local v4    # "prefEditor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    new-instance v3, Lcom/ca/org/acra/CrashReportPersister;

    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-virtual {v7}, Lcom/ca/org/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/ca/org/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 170
    .local v3, "persister":Lcom/ca/org/acra/CrashReportPersister;
    :try_start_0
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add user comment to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    iget-object v9, v9, Lcom/ca/org/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    iget-object v7, v7, Lcom/ca/org/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/ca/org/acra/CrashReportPersister;->load(Ljava/lang/String;)Lcom/ca/org/acra/collector/CrashReportData;

    move-result-object v1

    .line 172
    .local v1, "crashData":Lcom/ca/org/acra/collector/CrashReportData;
    sget-object v7, Lcom/ca/org/acra/ReportField;->USER_COMMENT:Lcom/ca/org/acra/ReportField;

    invoke-virtual {v1, v7, v0}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v7, Lcom/ca/org/acra/ReportField;->USER_EMAIL:Lcom/ca/org/acra/ReportField;

    invoke-virtual {v1, v7, v6}, Lcom/ca/org/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    iget-object v7, v7, Lcom/ca/org/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v3, v1, v7}, Lcom/ca/org/acra/CrashReportPersister;->store(Lcom/ca/org/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "crashData":Lcom/ca/org/acra/collector/CrashReportData;
    :goto_2
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "About to start SenderWorker from CrashReportDialog"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getErrorReporter()Lcom/ca/org/acra/ErrorReporter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v10}, Lcom/ca/org/acra/ErrorReporter;->startSendingReports(ZZ)Lcom/ca/org/acra/SendWorker;

    .line 184
    invoke-static {}, Lcom/ca/org/acra/ACRA;->getConfig()Lcom/ca/org/acra/ACRAConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ca/org/acra/ACRAConfiguration;->resDialogOkToast()I

    move-result v5

    .line 185
    .local v5, "toastId":I
    if-eqz v5, :cond_0

    .line 186
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-virtual {v7}, Lcom/ca/org/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v10}, Lcom/ca/org/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 188
    :cond_0
    iget-object v7, p0, Lcom/ca/org/acra/CrashReportDialog$1;->this$0:Lcom/ca/org/acra/CrashReportDialog;

    invoke-virtual {v7}, Lcom/ca/org/acra/CrashReportDialog;->finish()V

    .line 189
    return-void

    .line 155
    .end local v0    # "comment":Ljava/lang/String;
    .end local v3    # "persister":Lcom/ca/org/acra/CrashReportPersister;
    .end local v5    # "toastId":I
    .end local v6    # "usrEmail":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 165
    .restart local v0    # "comment":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    .restart local v6    # "usrEmail":Ljava/lang/String;
    goto :goto_1

    .line 175
    .restart local v3    # "persister":Lcom/ca/org/acra/CrashReportPersister;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/ca/org/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "User comment not added: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
