.class public Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;
.implements Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelInterface;


# instance fields
.field private TAG_LOG:Ljava/lang/String;

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

.field private configPanelViewModelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;

.field private providerConfigPanel:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;


# direct methods
.method public constructor <init>(Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->TAG_LOG:Ljava/lang/String;

    .line 19
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-direct {v0, p0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;-><init>(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;)V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->providerConfigPanel:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    .line 24
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->configPanelViewModelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;

    .line 25
    return-void
.end method


# virtual methods
.method public getConfigPanelList()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->providerConfigPanel:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-virtual {v0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->requestConfigList()V

    .line 30
    return-void
.end method

.method public getReceivedList(Ljava/util/List;Ljava/lang/Error;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 35
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->categoryList:Ljava/util/List;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->configPanelViewModelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;

    invoke-interface {v0, v2, p2}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;->getReceivedConfigList(Ljava/util/List;Ljava/lang/Error;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->configPanelViewModelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;

    iget-object v1, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->categoryList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;->getReceivedConfigList(Ljava/util/List;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public getResultUpdateStatus(Ljava/lang/Error;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->configPanelViewModelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;

    invoke-interface {v0, p1}, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModelReceiverInterface;->getResultUpdateStatus(Ljava/lang/Error;)V

    .line 54
    return-void
.end method

.method public setStatus(Lbr/com/santander/msgsdk/configPanel/model/Category;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->TAG_LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbr/com/santander/msgsdk/configPanel/model/Category;->isMembershipStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/viewModel/ConfigPanelViewModel;->providerConfigPanel:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-virtual {v0, p1}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->sendUpdateStatusCategory(Lbr/com/santander/msgsdk/configPanel/model/Category;)V

    .line 49
    return-void
.end method
