.class Landroid/support/design/widget/BaseTransientBottomBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$5$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5$1;-><init>(Landroid/support/design/widget/BaseTransientBottomBar$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    :cond_0
    return-void
.end method
