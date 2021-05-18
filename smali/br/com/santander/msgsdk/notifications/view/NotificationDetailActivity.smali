.class public Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private dateDetailTextView:Landroid/widget/TextView;

.field private descriptionNotificationDetailTextView:Landroid/widget/TextView;

.field private expiredDateDetailTextView:Landroid/widget/TextView;

.field private moreOptionsDetailTextView:Landroid/widget/TextView;

.field private notificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

.field private position:Ljava/lang/String;

.field private textExpiredDateDetailTextView:Landroid/widget/TextView;

.field private timerImageView:Landroid/widget/ImageView;

.field private titleDetailTextView:Landroid/widget/TextView;

.field private toolbarDetail:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->position:Ljava/lang/String;

    return-object v0
.end method

.method private getNotificationFromIntent(Landroid/content/Intent;)Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;-><init>()V

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setText(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setTitle(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sentDate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setSentDate(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "expirationDate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setExpirationDate(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->position:Ljava/lang/String;

    .line 212
    return-object v0
.end method

.method private setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 196
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_toolbar_notification_detail_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 200
    :cond_0
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToolbarColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToolbarColor()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 203
    :cond_1
    return-void
.end method

.method private setupView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 156
    sget v0, Lbr/com/santander/msgsdk/R$id;->toolbar_detail_notification:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->toolbarDetail:Landroid/support/v7/widget/Toolbar;

    .line 157
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->toolbarDetail:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 158
    sget v0, Lbr/com/santander/msgsdk/R$id;->title_detail_tv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->titleDetailTextView:Landroid/widget/TextView;

    .line 159
    sget v0, Lbr/com/santander/msgsdk/R$id;->date_detail_tv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->dateDetailTextView:Landroid/widget/TextView;

    .line 160
    sget v0, Lbr/com/santander/msgsdk/R$id;->text_expired_date_detail_tv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->textExpiredDateDetailTextView:Landroid/widget/TextView;

    .line 161
    sget v0, Lbr/com/santander/msgsdk/R$id;->expire_date_detail_tv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->expiredDateDetailTextView:Landroid/widget/TextView;

    .line 162
    sget v0, Lbr/com/santander/msgsdk/R$id;->description_notification_detail_tv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->descriptionNotificationDetailTextView:Landroid/widget/TextView;

    .line 163
    sget v0, Lbr/com/santander/msgsdk/R$id;->timer_detail_imv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->timerImageView:Landroid/widget/ImageView;

    .line 164
    sget v0, Lbr/com/santander/msgsdk/R$id;->more_options_detail_tv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->moreOptionsDetailTextView:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->moreOptionsDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->getNotificationFromIntent(Landroid/content/Intent;)Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->titleDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->descriptionNotificationDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->dateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getSentDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbr/com/santander/msgsdk/util/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->textExpiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->expiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->timerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbr/com/santander/msgsdk/util/Utils;->expiredDate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->textExpiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->expiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->textExpiredDateDetailTextView:Landroid/widget/TextView;

    const-string v2, "Expirado em: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->expiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->timerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->textExpiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->expiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->textExpiredDateDetailTextView:Landroid/widget/TextView;

    const-string v2, "Expira em: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->expiredDateDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->timerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 218
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->notificationDetailedBackAction()V

    .line 221
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/msgsdk/R$id;->more_options_detail_tv:I

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->notificationDetailedOptions()V

    .line 71
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    sget v2, Lbr/com/santander/msgsdk/R$layout;->options_notification_detail_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 76
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 78
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 80
    const/16 v3, 0x50

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 86
    sget v0, Lbr/com/santander/msgsdk/R$id;->option_cancel_tv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    new-instance v2, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$1;

    invoke-direct {v2, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$1;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v0, Lbr/com/santander/msgsdk/R$id;->option_unread_ll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    new-instance v2, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;

    invoke-direct {v2, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$2;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lbr/com/santander/msgsdk/R$id;->option_delete_ll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    new-instance v1, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;

    invoke-direct {v1, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity$3;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lbr/com/santander/msgsdk/R$layout;->activity_notification_detail:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->setupView()V

    .line 45
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 55
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationDetailActivity;->onBackPressed()V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 50
    return-void
.end method
