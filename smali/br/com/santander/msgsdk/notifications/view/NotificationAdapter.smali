.class public Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final NOTIFICATION:I

.field private context:Landroid/content/Context;

.field mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

.field private mNotificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

.field private view:Landroid/view/View;

.field private final viewHelper:Lbr/com/santander/msgsdk/customView/ViewHelper;

.field private viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;",
            "Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Lbr/com/santander/msgsdk/customView/ViewHelper;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/customView/ViewHelper;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->viewHelper:Lbr/com/santander/msgsdk/customView/ViewHelper;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->NOTIFICATION:I

    .line 35
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationList:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    .line 38
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 70
    :pswitch_0
    check-cast p1, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;

    invoke-virtual {p0, p1, p2}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->setNotificationViewHolder(Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;I)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    sget v1, Lbr/com/santander/msgsdk/R$layout;->swipe_holder_notification:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->view:Landroid/view/View;

    .line 60
    new-instance v0, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;

    iget-object v1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->view:Landroid/view/View;

    iget-object v3, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationSelectorListener:Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;

    invoke-direct {v0, v1, v2, v3}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lbr/com/santander/msgsdk/notifications/view/NotificationSelectorListener;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 63
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method setNotificationViewHolder(Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;I)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    iput-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    .line 77
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->viewHelper:Lbr/com/santander/msgsdk/customView/ViewHelper;

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->getSwipeLayout()Lbr/com/santander/msgsdk/customView/SwipeLayout;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbr/com/santander/msgsdk/customView/ViewHelper;->bind(Lbr/com/santander/msgsdk/customView/SwipeLayout;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->setTitleNotificationTextView(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->setDescriptionNotificationTextView(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;->getSentDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->setDateTimeNotificationTextView(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->setTimerNotificationVisibility(Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 82
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->setBackgroundRead(Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 83
    iget-object v0, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationDetail:Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/notifications/view/NotificationViewHolder;->setTextUnreadTextView(Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;)V

    .line 84
    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/notifications/model/NotificationDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->mNotificationList:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/notifications/view/NotificationAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
