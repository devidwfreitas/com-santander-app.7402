.class Landroid/support/v7/widget/ForwardingListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field mIsAttached:Z

.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    iget-object v0, v0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 111
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    .line 112
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;

    invoke-static {v0}, Landroid/support/v7/widget/ForwardingListener;->access$000(Landroid/support/v7/widget/ForwardingListener;)V

    .line 115
    :cond_0
    return-void
.end method
