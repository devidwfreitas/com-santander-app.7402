.class Lmfr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lmfq;


# direct methods
.method constructor <init>(Lmfq;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lmfr;->a:Lmfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lmfr;->a:Lmfq;

    iget-object v0, v0, Lmfq;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmfr;->a:Lmfq;

    invoke-virtual {v0}, Lmfq;->d()V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lmfr;->a:Lmfq;

    invoke-static {v0}, Lmfq;->a(Lmfq;)V

    goto :goto_0
.end method
