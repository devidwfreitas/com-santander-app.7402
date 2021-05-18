.class Landroid/support/customtabs/CustomTabsClient$2;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsClient;

.field final synthetic val$callback:Landroid/support/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient;Landroid/support/customtabs/CustomTabsCallback;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2;->this$0:Landroid/support/customtabs/CustomTabsClient;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    :cond_0
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 190
    :cond_0
    return-void
.end method
