.class public Lbr/com/santander/msgsdk/util/NotificationActionRouter;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field alertDialog:Landroid/support/v7/app/AlertDialog;

.field private delete:Z

.field private finishActivity:Z

.field private intent:Landroid/content/Intent;

.field private msg:Lbr/com/santander/msgsdk/MSG;

.field private pushId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private uuId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finishActivity:Z

    .line 26
    iput-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    .line 27
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->msg:Lbr/com/santander/msgsdk/MSG;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->delete:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->pushId:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->uuId:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->intent:Landroid/content/Intent;

    .line 32
    iput-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->uuId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 121
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->intent:Landroid/content/Intent;

    .line 40
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 41
    const-string v0, "msg_noti_del"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->delete:Z

    .line 42
    const-string v0, "msg_push_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->pushId:Ljava/lang/String;

    .line 43
    const-string v0, "msg_push_uuid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->uuId:Ljava/lang/String;

    .line 45
    const-string v0, "msg_noti_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    if-lez v2, :cond_0

    .line 47
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 50
    :cond_0
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->delete:Z

    if-nez v0, :cond_5

    .line 51
    new-array v0, v5, [I

    const-string v2, "msg_noti_intent_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    .line 52
    aget v0, v0, v4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 53
    const-string v0, "msg_noti_intent_extra"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iput-boolean v4, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finishActivity:Z

    .line 58
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    sget v1, Lbr/com/santander/msgsdk/R$layout;->dialog_msg:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 63
    sget v0, Lbr/com/santander/msgsdk/R$id;->cancel_dialog_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    sget v3, Lbr/com/santander/msgsdk/R$id;->open_browser_dialog_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 67
    iget-object v3, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    iget-object v3, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AlertDialog;->requestWindowFeature(I)Z

    .line 70
    new-instance v3, Lbr/com/santander/msgsdk/util/NotificationActionRouter$1;

    invoke-direct {v3, p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter$1;-><init>(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter$2;-><init>(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter$3;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter$3;-><init>(Lbr/com/santander/msgsdk/util/NotificationActionRouter;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 96
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 114
    :goto_1
    iget-boolean v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finishActivity:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    .line 116
    :cond_1
    return-void

    .line 54
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->openDeepLink(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    goto :goto_1

    .line 103
    :cond_4
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->intent:Landroid/content/Intent;

    const-string v2, "msg_noti_stimulum_id"

    const-string v3, "msg_noti_stimulum_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->intent:Landroid/content/Intent;

    const-string v2, "msg_noti_intent_extra"

    const-string v3, "msg_noti_intent_extra"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->startActivity(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    .line 107
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->pushId:Ljava/lang/String;

    const-string v2, "OPENED"

    iget-object v3, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->uuId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->pushId:Ljava/lang/String;

    const-string v2, "DISCARTED"

    iget-object v3, p0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->uuId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lbr/com/santander/msgsdk/MSGSDK;->updateStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->finish()V

    goto :goto_1
.end method

.method openDeepLink(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    sget-object v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openDeepLink - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-object v0, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->TAG:Ljava/lang/String;

    const-string v1, "openDeepLink - ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    sget-object v1, Lbr/com/santander/msgsdk/util/NotificationActionRouter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDeepLink - Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
