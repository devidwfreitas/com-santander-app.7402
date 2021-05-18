.class public Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;
.implements Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private dialogTransparent:Landroid/app/Dialog;

.field private error:Ljava/lang/Error;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private nothingNewLinearLayout:Landroid/widget/LinearLayout;

.field private notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

.field private notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

.field private notificationError:Landroid/widget/LinearLayout;

.field private notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

.field private notificationsLinearLayout:Landroid/widget/LinearLayout;

.field private notificationsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private notificationslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;"
        }
    .end annotation
.end field

.field private searchEditText:Landroid/widget/TextView;

.field private temporaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 50
    new-instance v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 56
    new-instance v0, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;-><init>(Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModelReceiverInterface;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    return-object v0
.end method

.method private sendNotificationParams(Landroid/content/Intent;Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 291
    const-string v1, "text"

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "title"

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "sentDate"

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getSentDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getSentDate()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "expirationDate"

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "url"

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "stimulumType"

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getStimulumType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getStimulumType()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v0, "position"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    return-object p1

    .line 291
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 292
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 293
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 294
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 295
    :cond_4
    const-string v0, ""

    goto :goto_4

    .line 296
    :cond_5
    const-string v0, ""

    goto :goto_5
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 103
    sget v0, Lbr/com/santander/msgsdk/R$id;->toolbar_msg_notifications:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 104
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 105
    sget v0, Lbr/com/santander/msgsdk/R$id;->search_et:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->searchEditText:Landroid/widget/TextView;

    .line 106
    sget v0, Lbr/com/santander/msgsdk/R$id;->notifications_view_ll:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsLinearLayout:Landroid/widget/LinearLayout;

    .line 107
    sget v0, Lbr/com/santander/msgsdk/R$id;->nothing_new_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->nothingNewLinearLayout:Landroid/widget/LinearLayout;

    .line 108
    sget v0, Lbr/com/santander/msgsdk/R$id;->notification_error_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationError:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationError:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 111
    sget v0, Lbr/com/santander/msgsdk/R$id;->notifications_recycler_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 113
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 114
    return-void
.end method


# virtual methods
.method filter(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 232
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    :cond_1
    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->updateList(Ljava/util/List;)V

    .line 238
    return-void
.end method

.method public getNotificationsResult(Ljava/util/List;Ljava/lang/Error;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;",
            "Ljava/lang/Error;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 242
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    .line 243
    invoke-static {p0, p1}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->countUnreadNotification(Landroid/content/Context;Ljava/util/List;)I

    .line 244
    iput-object p2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->error:Ljava/lang/Error;

    .line 245
    if-nez p2, :cond_2

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->nothingNewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    new-instance v0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    .line 251
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 252
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 261
    :cond_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->nothingNewLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 388
    if-ne p1, v3, :cond_0

    .line 389
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 390
    const-string v0, "position"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 391
    const-string v1, "excluded"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 393
    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {p0, v0, v3, v3}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->updateReadOrDelete(IZZ)V

    .line 400
    :cond_0
    :goto_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 401
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0, v0, v2, v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->updateReadOrDelete(IZZ)V

    goto :goto_0
.end method

.method public onClickDeleteMessage(ILbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->swipeNotificationOptionDelete()V

    .line 200
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->nothingNewLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_dialog_title_delete_notification:I

    .line 203
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_delete_notification:I

    .line 204
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_calcel_button:I

    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$4;

    invoke-direct {v3, p0, p2}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$4;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;Lbr/com/santander/msgsdk/customView/SwipeLayout;)V

    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_continue_button:I

    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;

    invoke-direct {v3, p0, p1, p2}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$3;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;ILbr/com/santander/msgsdk/customView/SwipeLayout;)V

    .line 215
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 227
    return-void
.end method

.method public onClickNotification(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lbr/com/santander/msgsdk/notifications/view/NotificationRouter;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 133
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {p0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->setReadNotification(Landroid/content/Context;)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->updateReadOrDelete(IZZ)V

    .line 138
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 139
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lbr/com/santander/msgsdk/Tracking;->notificationTypeAction(Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-direct {p0, v1, v0, p1}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->sendNotificationParams(Landroid/content/Intent;Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    goto :goto_0
.end method

.method public onClickTimerNotification(I)V
    .locals 4

    .prologue
    .line 147
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 149
    sget v2, Lbr/com/santander/msgsdk/R$layout;->dialog_timer:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 152
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 153
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 154
    sget v0, Lbr/com/santander/msgsdk/R$id;->close_timer_dialog_ll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 155
    new-instance v1, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$2;

    invoke-direct {v1, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$2;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

.method public onClickUnreadMessage(ILbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    .line 166
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 168
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-static {p0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->setUnreadNotification(Landroid/content/Context;)V

    .line 174
    :goto_1
    iget-object v3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStatusRead(Z)V

    .line 176
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 177
    iget-object v4, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v4}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    iget-object v4, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 179
    iget-object v4, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    iget-object v4, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v4}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v4

    invoke-virtual {v0, v4}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStatusRead(Z)V

    goto :goto_3

    .line 165
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {p0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->setReadNotification(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 174
    goto :goto_2

    .line 182
    :cond_4
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->updateReadOrDelete(IZZ)V

    .line 184
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 185
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notification:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 186
    invoke-virtual {v2}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v2

    invoke-interface {v0, v2}, Lbr/com/santander/msgsdk/Tracking;->swipeNotificationOptionReadUnread(Z)V

    .line 189
    :cond_5
    invoke-virtual {p2, v1}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->close(Z)V

    .line 190
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 191
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lbr/com/santander/msgsdk/R$layout;->activity_notifications:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->setupView()V

    .line 64
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->setLoading()V

    .line 65
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->getNotifications()V

    .line 66
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->menuNotificationsAction()V

    .line 69
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 94
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->onBackPressed()V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->searchEditText:Landroid/widget/TextView;

    new-instance v1, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$1;

    invoke-direct {v1, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$1;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    return-void
.end method

.method public onSwipeNotification(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)V
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->swipeNotificationOptions()V

    .line 354
    :cond_0
    return-void
.end method

.method public setLoading()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lbr/com/santander/msgsdk/R$style;->SantanderTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    .line 269
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbr/com/santander/msgsdk/R$layout;->loading_frame_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 271
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$color;->background_dialog_translucent:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 272
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    new-instance v1, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;

    invoke-direct {v1, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$5;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 285
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->error:Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 288
    :cond_1
    return-void
.end method

.method public setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 118
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_toolbar_notificatios_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 122
    :cond_0
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToolbarColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToolbarColor()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 125
    :cond_1
    return-void
.end method

.method updateReadOrDelete(IZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    .line 358
    if-eqz p2, :cond_3

    .line 359
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-static {p0}, Lbr/com/santander/msgsdk/notifications/UnreadMessagesUtils;->setReadNotification(Landroid/content/Context;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStatusExcluded(Z)V

    .line 363
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v1, p1, v0}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->setUpdateStatusReadOrDelete(ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 364
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    invoke-virtual {v0, p1, v2}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->updateStatusDeleteResult(ILjava/lang/Error;)V

    .line 367
    :try_start_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    :goto_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 381
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->searchEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->filter(Ljava/lang/String;)V

    .line 383
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 384
    return-void

    .line 357
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-object v1, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateReadOrDelete IndexOutOfBoundsException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    :catch_1
    move-exception v0

    .line 371
    sget-object v1, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateReadOrDelete Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_3
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0, p3}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->setStatusRead(Z)V

    .line 376
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v1, p1, v0}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->setUpdateStatusReadOrDelete(ILbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 377
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationViewModel:Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;

    invoke-virtual {v0, p1, v2}, Lbr/com/santander/msgsdk/notifications/viewModel/NotificationViewModel;->updateStatusReadResult(ILjava/lang/Error;)V

    goto :goto_1
.end method

.method public updateStatusDeleteResult(ILjava/lang/Error;)V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    .line 328
    if-nez p2, :cond_2

    .line 329
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->updateList(Ljava/util/List;)V

    .line 330
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 347
    :cond_0
    :goto_1
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 335
    :cond_3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_dialog_error_title:I

    .line 337
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_error_excluded_notification:I

    .line 338
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_finish_button:I

    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$7;

    invoke-direct {v3, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$7;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V

    .line 339
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public updateStatusReadResult(ILjava/lang/Error;)V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->temporaryList:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    .line 304
    if-nez p2, :cond_2

    .line 305
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationAdapter:Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->updateList(Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 323
    :cond_0
    :goto_1
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->notificationslist:Ljava/util/List;

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 311
    :cond_3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_dialog_error_title:I

    .line 313
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_error_update_notification:I

    .line 314
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$string;->msg_dialog_finish_button:I

    new-instance v3, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$6;

    invoke-direct {v3, p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity$6;-><init>(Lbr/com/santander/msgsdk/notifications/view/NotificationsActivity;)V

    .line 315
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method
