.class public Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListener:Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

.field private menuTextView:Landroid/widget/TextView;

.field private subtextMenuTextView:Landroid/widget/TextView;

.field private switchCategoryButton:Lbr/com/santander/uisdk/SantanderSwitch;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lbr/com/santander/msgsdk/R$id;->text_menu_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->menuTextView:Landroid/widget/TextView;

    .line 28
    sget v0, Lbr/com/santander/msgsdk/R$id;->switch_category_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/SantanderSwitch;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->switchCategoryButton:Lbr/com/santander/uisdk/SantanderSwitch;

    .line 29
    sget v0, Lbr/com/santander/msgsdk/R$id;->subtext_menu_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->subtextMenuTextView:Landroid/widget/TextView;

    .line 30
    iput-object p3, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->mListener:Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

    .line 31
    iput-object p2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;)Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->mListener:Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;

    return-object v0
.end method


# virtual methods
.method public checkSwitchCategoryButton(Z)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->switchCategoryButton:Lbr/com/santander/uisdk/SantanderSwitch;

    invoke-virtual {v0, p1}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(Z)V

    .line 40
    return-void
.end method

.method public onClickSwitchCategoryButton(I)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->switchCategoryButton:Lbr/com/santander/uisdk/SantanderSwitch;

    new-instance v1, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;

    invoke-direct {v1, p0, p1}, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder$1;-><init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;I)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/SantanderSwitch;->setOnCheckedChangeListener(Lalz;)V

    .line 53
    return-void
.end method

.method public setMenuTextView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->menuTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public setSubtextMenuTextView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigMenuViewHolder;->subtextMenuTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
