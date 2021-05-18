.class public Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;
.implements Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private check:Z

.field private final config:Lbr/com/santander/msgsdk/configPanel/model/Config;

.field private configCategoryAdapter:Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;

.field private configMenuRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private configPanelLinearLayout:Landroid/widget/LinearLayout;

.field private configPanelRoot:Landroid/widget/LinearLayout;

.field private configPanelViewModel:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

.field private dialogTransparent:Landroid/app/Dialog;

.field private error:Ljava/lang/Error;

.field private loadingFrameLayout:Landroid/widget/FrameLayout;

.field private loadingPanelProgressBar:Landroid/widget/ProgressBar;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private msgsdk:Lbr/com/santander/msgsdk/MSG;

.field private notificationError:Landroid/widget/LinearLayout;

.field private pos:I

.field private toolbarMSG:Landroid/support/v7/widget/Toolbar;

.field private updateStatusInterface:Lbr/com/santander/msgsdk/MSGSDK$UpdateStatusInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 42
    const-class v0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/model/Config;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/configPanel/model/Config;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->config:Lbr/com/santander/msgsdk/configPanel/model/Config;

    .line 53
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->msgsdk:Lbr/com/santander/msgsdk/MSG;

    .line 54
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;-><init>(Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelViewModel:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    .line 55
    iput v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->pos:I

    .line 56
    iput-boolean v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->check:Z

    return-void
.end method

.method static synthetic access$000(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelViewModel:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    return-object v0
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 117
    sget v0, Lbr/com/santander/msgsdk/R$id;->toolbar_msg:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->toolbarMSG:Landroid/support/v7/widget/Toolbar;

    .line 118
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->toolbarMSG:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->setToolbar(Landroid/support/v7/widget/Toolbar;)V

    .line 120
    sget v0, Lbr/com/santander/msgsdk/R$id;->notification_error_view:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->notificationError:Landroid/widget/LinearLayout;

    .line 121
    sget v0, Lbr/com/santander/msgsdk/R$id;->config_panel_root:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelRoot:Landroid/widget/LinearLayout;

    .line 123
    sget v0, Lbr/com/santander/msgsdk/R$id;->config_panel_ll:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelLinearLayout:Landroid/widget/LinearLayout;

    .line 124
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 125
    sget v0, Lbr/com/santander/msgsdk/R$id;->menu_config_panel_rv:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configMenuRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 126
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configMenuRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 127
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configMenuRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getReceivedConfigList(Ljava/util/List;Ljava/lang/Error;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/msgsdk/configPanel/model/Category;",
            ">;",
            "Ljava/lang/Error;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 95
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->categoryList:Ljava/util/List;

    .line 96
    iput-object p2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->error:Ljava/lang/Error;

    .line 98
    if-nez p2, :cond_1

    .line 99
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->categoryList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lbr/com/santander/msgsdk/configPanel/view/MenuSelectorListener;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configCategoryAdapter:Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;

    .line 100
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configMenuRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configCategoryAdapter:Lbr/com/santander/msgsdk/configPanel/view/ConfigCategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->notificationError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_2
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->notificationError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public getResultUpdateStatus(Ljava/lang/Error;)V
    .locals 0

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 253
    :cond_0
    return-void
.end method

.method public onChangeSwitchButton(Lbr/com/santander/uisdk/SantanderSwitch;ZI)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 187
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->categoryList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/configPanel/model/Category;

    .line 189
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->isMembershipStatus()Z

    move-result v1

    iput-boolean v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->check:Z

    .line 190
    iput p3, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->pos:I

    .line 192
    if-nez p2, :cond_0

    .line 194
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 196
    sget v2, Lbr/com/santander/msgsdk/R$layout;->dialog_msg:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 197
    invoke-virtual {v5, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 199
    sget v1, Lbr/com/santander/msgsdk/R$id;->cancel_dialog_button:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 200
    sget v2, Lbr/com/santander/msgsdk/R$id;->open_browser_dialog_button:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    sget v3, Lbr/com/santander/msgsdk/R$id;->dialog_msg_title:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 202
    sget v6, Lbr/com/santander/msgsdk/R$id;->dialog_description_tv:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 204
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 205
    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 207
    const-string v7, "Aten\u00e7\u00e3o"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->getAlertMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v3, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$3;

    invoke-direct {v3, p0, p1, v0, v6}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$3;-><init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;Lbr/com/santander/uisdk/SantanderSwitch;Lbr/com/santander/msgsdk/configPanel/model/Category;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance v1, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;

    invoke-direct {v1, p0, p1, v0, v6}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$4;-><init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;Lbr/com/santander/uisdk/SantanderSwitch;Lbr/com/santander/msgsdk/configPanel/model/Category;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$5;

    invoke-direct {v0, p0, v6}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$5;-><init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v5, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p1, v2, v7}, Lbr/com/santander/uisdk/SantanderSwitch;->setChecked(ZZ)V

    .line 241
    invoke-virtual {v0, v2}, Lbr/com/santander/msgsdk/configPanel/model/Category;->setMembershipStatus(Z)V

    .line 242
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelViewModel:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    invoke-virtual {v1, v0}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->setStatus(Lbr/com/santander/msgsdk/configPanel/model/Category;)V

    .line 243
    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->trackingConfigNotificationAction(Lbr/com/santander/msgsdk/configPanel/model/Category;)V

    .line 244
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;->isMembershipStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lbr/com/santander/msgsdk/R$layout;->activity_msg_config_panel:I

    invoke-virtual {p0, v0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->setLoading()V

    .line 68
    invoke-direct {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->setupView()V

    .line 69
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->configPanelViewModel:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->getConfigPanelList()V

    .line 70
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/Tracking;->menuConfigPanelAction()V

    .line 73
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 84
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->onBackPressed()V

    .line 86
    const/4 v0, 0x1

    .line 88
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
    .line 77
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->subscribe()V

    .line 79
    return-void
.end method

.method public setLoading()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lbr/com/santander/msgsdk/R$style;->SantanderTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    .line 143
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbr/com/santander/msgsdk/R$layout;->loading_frame_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 145
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lbr/com/santander/msgsdk/R$color;->background_loading_translucent:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 146
    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    new-instance v1, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;

    invoke-direct {v1, p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$1;-><init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 160
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->categoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->error:Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->dialogTransparent:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 163
    :cond_1
    return-void
.end method

.method public setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 132
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    sget v1, Lbr/com/santander/msgsdk/R$string;->msg_toolbar_config_panel_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 136
    :cond_0
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToolbarColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getToolbarColor()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 139
    :cond_1
    return-void
.end method

.method public subscribe()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribe Preferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbr/com/santander/msgsdk/util/Preferences;->isSubscribe(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/msgsdk/util/Preferences;->isSubscribe(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    new-instance v1, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;

    invoke-direct {v1, p0}, Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity$2;-><init>(Lbr/com/santander/msgsdk/configPanel/view/ConfigPanelActivity;)V

    invoke-interface {v0, v1}, Lbr/com/santander/msgsdk/MSG;->subscribeArch(Lbr/com/santander/msgsdk/MSGSDK$Callback;)V

    .line 182
    :cond_0
    return-void
.end method

.method trackingConfigNotificationAction(Lbr/com/santander/msgsdk/configPanel/model/Category;)V
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/msgsdk/MSG;->getTracking()Lbr/com/santander/msgsdk/Tracking;

    move-result-object v0

    .line 258
    invoke-virtual {p1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->isMembershipStatus()Z

    move-result v2

    .line 257
    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/Tracking;->configNotificationAction(Ljava/lang/String;Z)V

    .line 260
    :cond_0
    return-void
.end method
