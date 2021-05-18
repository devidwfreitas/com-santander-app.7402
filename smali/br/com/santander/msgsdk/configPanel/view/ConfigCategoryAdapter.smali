.class public Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;
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
.field private final MENU:I

.field private category:Lbr/com/santander/msgsdk/configPanel/model/Category;

.field private mCategoryList:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private final mMenuSelectorListener:Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

.field private view:Landroid/view/View;

.field viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;",
            "Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->MENU:I

    .line 31
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mCategoryList:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mMenuSelectorListener:Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

    .line 34
    return-void
.end method

.method private setMenuCategoryViewHolder(Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/configPanel/model/Category;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    .line 75
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->setMenuTextView(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->isMembershipStatus()Z

    move-result v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->checkSwitchCategoryButton(Z)V

    .line 77
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->setSubtextMenuTextView(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, p2}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->onClickSwitchCategoryButton(I)V

    .line 79
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/configPanel/model/Category;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 55
    :pswitch_0
    check-cast p1, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;

    .line 56
    invoke-direct {p0, p1, p2}, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->setMenuCategoryViewHolder(Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;I)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    packed-switch p2, :pswitch_data_0

    .line 70
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    sget v1, Lbr/com/santander/msgsdk/R$layout;->holder_config_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->view:Landroid/view/View;

    .line 67
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->view:Landroid/view/View;

    iget-object v2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->mMenuSelectorListener:Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

    invoke-direct {v0, v1, v2, v3}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 68
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateDataSet()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method
