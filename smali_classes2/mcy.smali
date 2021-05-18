.class Lmcy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic a:Lmcx;


# direct methods
.method constructor <init>(Lmcx;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmcy;->a:Lmcx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmcy;->a:Lmcx;

    invoke-virtual {v0}, Lmcx;->invalidateSelf()V

    .line 66
    iget-object v0, p0, Lmcy;->a:Lmcx;

    invoke-static {v0}, Lmcx;->a(Lmcx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 69
    :cond_0
    return-void
.end method
