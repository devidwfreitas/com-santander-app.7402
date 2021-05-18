.class Lcom/ca/mdo/PolicyManager$1;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mdo/PolicyManager;->processSDKEnablementChange(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ca/mdo/PolicyManager;

.field final synthetic val$nowSDKEnabled:Z


# direct methods
.method constructor <init>(Lcom/ca/mdo/PolicyManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/ca/mdo/PolicyManager;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ca/mdo/PolicyManager$1;->this$0:Lcom/ca/mdo/PolicyManager;

    iput-boolean p2, p0, Lcom/ca/mdo/PolicyManager$1;->val$nowSDKEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/ca/mdo/PolicyManager$1;->val$nowSDKEnabled:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/ca/mdo/SDK;->onSDKEnabled()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/ca/mdo/SDK;->onSDKDisabled()V

    goto :goto_0
.end method
