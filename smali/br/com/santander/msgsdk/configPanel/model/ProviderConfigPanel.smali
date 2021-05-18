.class public Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private category:Lbr/com/santander/msgsdk/configPanel/model/Category;

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

.field private providerConfigPanelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->categoryList:Ljava/util/List;

    .line 24
    new-instance v0, Lbr/com/santander/msgsdk/configPanel/model/Category;

    invoke-direct {v0}, Lbr/com/santander/msgsdk/configPanel/model/Category;-><init>()V

    iput-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->category:Lbr/com/santander/msgsdk/configPanel/model/Category;

    .line 27
    iput-object p1, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->providerConfigPanelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;->providerConfigPanelReceiverInterface:Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanelReceiverInterface;

    return-object v0
.end method


# virtual methods
.method public requestConfigList()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-interface {v1}, Lbr/com/santander/msgsdk/MSG;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;

    invoke-direct {v2, p0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$1;-><init>(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)V

    invoke-interface {v0, v1, v2}, Lbr/com/santander/msgsdk/MSG;->requestConfigPanel(Ljava/lang/String;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanel;)V

    .line 69
    return-void
.end method

.method public sendUpdateStatusCategory(Lbr/com/santander/msgsdk/configPanel/model/Category;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v0

    .line 74
    invoke-static {}, Lbr/com/santander/msgsdk/MSGSDK;->getInstance()Lbr/com/santander/msgsdk/MSG;

    move-result-object v1

    invoke-interface {v1}, Lbr/com/santander/msgsdk/MSG;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$2;

    invoke-direct {v2, p0}, Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel$2;-><init>(Lbr/com/santander/msgsdk/configPanel/model/ProviderConfigPanel;)V

    .line 73
    invoke-interface {v0, v1, p1, v2}, Lbr/com/santander/msgsdk/MSG;->requestConfigPanelUpdate(Ljava/lang/String;Lbr/com/santander/msgsdk/configPanel/model/Category;Lbr/com/santander/msgsdk/MSGSDK$CallbackRequestConfigPanelUpdate;)V

    .line 97
    return-void
.end method
