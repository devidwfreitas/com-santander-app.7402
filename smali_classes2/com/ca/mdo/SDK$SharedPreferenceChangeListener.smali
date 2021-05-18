.class Lcom/ca/mdo/SDK$SharedPreferenceChangeListener;
.super Ljava/lang/Object;
.source "SDK.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mdo/SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferenceChangeListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p2, :cond_0

    sget-object v0, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/ca/mdo/Util;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ca/mdo/Constants;->PREF_IS_SDK_ENABLED_BY_API:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ca/mdo/SDK;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/ca/mdo/SDK;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/ca/mdo/SDK;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/ca/mdo/SDK;->onSDKEnabled()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-static {}, Lcom/ca/mdo/SDK;->onSDKDisabled()V

    goto :goto_0
.end method
