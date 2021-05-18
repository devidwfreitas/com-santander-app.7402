.class public Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private dateTimeNotificationTextView:Landroid/widget/TextView;

.field private deleteLinearLayout:Landroid/widget/LinearLayout;

.field private descriptionNotificationTextView:Landroid/widget/TextView;

.field private detailNotificationImageView:Landroid/widget/ImageView;

.field private iconUnreadMessageImageView:Landroid/widget/ImageView;

.field private final mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

.field private notificationLinearLayout:Landroid/widget/LinearLayout;

.field private optionsFrameLayout:Landroid/widget/FrameLayout;

.field private swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

.field private textUnreadTextView:Landroid/widget/TextView;

.field private timerNotificationImageView:Landroid/widget/ImageView;

.field private titleNotificationTextView:Landroid/widget/TextView;

.field private unreadLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->context:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    .line 44
    sget v0, Lbr/com/santander/msgsdk/R$id;->swipe_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/customView/SwipeLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 45
    sget v0, Lbr/com/santander/msgsdk/R$id;->title_notification_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->titleNotificationTextView:Landroid/widget/TextView;

    .line 46
    sget v0, Lbr/com/santander/msgsdk/R$id;->date_time_notification_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->dateTimeNotificationTextView:Landroid/widget/TextView;

    .line 47
    sget v0, Lbr/com/santander/msgsdk/R$id;->detail_notification_imv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->detailNotificationImageView:Landroid/widget/ImageView;

    .line 48
    sget v0, Lbr/com/santander/msgsdk/R$id;->description_notification_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->descriptionNotificationTextView:Landroid/widget/TextView;

    .line 49
    sget v0, Lbr/com/santander/msgsdk/R$id;->timer_notification_imv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->timerNotificationImageView:Landroid/widget/ImageView;

    .line 50
    sget v0, Lbr/com/santander/msgsdk/R$id;->notification_ll:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->notificationLinearLayout:Landroid/widget/LinearLayout;

    .line 51
    sget v0, Lbr/com/santander/msgsdk/R$id;->unread_ll:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->unreadLinearLayout:Landroid/widget/LinearLayout;

    .line 52
    sget v0, Lbr/com/santander/msgsdk/R$id;->delete_ll:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->deleteLinearLayout:Landroid/widget/LinearLayout;

    .line 53
    sget v0, Lbr/com/santander/msgsdk/R$id;->textUnreadTextView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->textUnreadTextView:Landroid/widget/TextView;

    .line 54
    sget v0, Lbr/com/santander/msgsdk/R$id;->unread_image_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->iconUnreadMessageImageView:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->timerNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->notificationLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->unreadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->deleteLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    invoke-virtual {v0, p0}, Lbr/com/santander/msgsdk/customView/SwipeLayout;->setSwipeListener(Lbr/com/santander/msgsdk/customView/SwipeLayout$SwipeListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getSwipeLayout()Lbr/com/santander/msgsdk/customView/SwipeLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->getAdapterPosition()I

    move-result v0

    .line 113
    sget-object v1, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbr/com/santander/msgsdk/R$id;->timer_notification_imv:I

    if-ne v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    invoke-interface {v1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;->onClickTimerNotification(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbr/com/santander/msgsdk/R$id;->notification_ll:I

    if-ne v1, v2, :cond_2

    .line 117
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    invoke-interface {v1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;->onClickNotification(I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbr/com/santander/msgsdk/R$id;->unread_ll:I

    if-ne v1, v2, :cond_3

    .line 119
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->getSwipeLayout()Lbr/com/santander/msgsdk/customView/SwipeLayout;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;->onClickUnreadMessage(ILbr/com/santander/msgsdk/customView/SwipeLayout;)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbr/com/santander/msgsdk/R$id;->delete_ll:I

    if-ne v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->getSwipeLayout()Lbr/com/santander/msgsdk/customView/SwipeLayout;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;->onClickDeleteMessage(ILbr/com/santander/msgsdk/customView/SwipeLayout;)V

    goto :goto_0
.end method

.method public onClosed(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onOpened(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->getAdapterPosition()I

    move-result v0

    .line 133
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    invoke-interface {v1, p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;->onSwipeNotification(Lbr/com/santander/msgsdk/customView/SwipeLayout;I)V

    .line 134
    return-void
.end method

.method public onSlide(Lbr/com/santander/msgsdk/customView/SwipeLayout;F)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public setBackgroundRead(Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->notificationLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->context:Landroid/content/Context;

    sget v2, Lbr/com/santander/msgsdk/R$color;->whiteMSG:I

    .line 98
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 97
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 100
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->iconUnreadMessageImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->context:Landroid/content/Context;

    sget v2, Lbr/com/santander/msgsdk/R$color;->gray_notification_read:I

    .line 99
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDateTimeNotificationTextView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->dateTimeNotificationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setDescriptionNotificationTextView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->descriptionNotificationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public setDetailNotificationImageView(I)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public setSwipeLayout(Lbr/com/santander/msgsdk/customView/SwipeLayout;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->swipeLayout:Lbr/com/santander/msgsdk/customView/SwipeLayout;

    .line 94
    return-void
.end method

.method public setTextUnreadTextView(Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->textUnreadTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->isStatusRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lbr/com/santander/msgsdk/R$string;->unread_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->context:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lbr/com/santander/msgsdk/R$string;->read_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTimerNotificationImageView(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->timerNotificationImageView:Landroid/widget/ImageView;

    .line 81
    return-void
.end method

.method public setTimerNotificationVisibility(Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->timerNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getExpirationDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    return-void

    .line 84
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleNotificationTextView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->titleNotificationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
