.class public Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private intentAction:Landroid/content/Intent;

.field private position:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    if-ne p2, v4, :cond_0

    .line 123
    const-string v0, "position"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "excluded"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 125
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 126
    const-string v3, "position"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "excluded"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v4, v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->setResult(ILandroid/content/Intent;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->finish()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    .line 39
    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "sentDate"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    const-string v4, "expirationDate"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    const-string v5, "stimulumId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    const-string v5, "stimulumType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    const-string v6, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    const-string v7, "position"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->position:Ljava/lang/String;

    .line 49
    invoke-static {v5}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 51
    invoke-static {v6}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lbr/com/santander/msgsdk/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    sget v1, Lbr/com/santander/msgsdk/R$layout;->dialog_msg:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 57
    sget v0, Lbr/com/santander/msgsdk/R$id;->cancel_dialog_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    sget v3, Lbr/com/santander/msgsdk/R$id;->open_browser_dialog_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 61
    iget-object v3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    iget-object v3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog;->requestWindowFeature(I)Z

    .line 64
    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$1;

    invoke-direct {v3, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$1;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;

    invoke-direct {v0, p0, v6}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$2;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$3;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter$3;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 87
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, v6}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->openDeepLink(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    const-string v5, "text"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    const-string v1, "sentDate"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    const-string v1, "expirationDate"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    const-string v1, "position"

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->position:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->intentAction:Landroid/content/Intent;

    invoke-virtual {p0, v0, v8}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method openDeepLink(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    sget-object v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->TAG:Ljava/lang/String;

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

    .line 108
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-object v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->TAG:Ljava/lang/String;

    const-string v1, "openDeepLink - ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->finish()V

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    sget-object v1, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->TAG:Ljava/lang/String;

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

    .line 115
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;->finish()V

    goto :goto_0
.end method
