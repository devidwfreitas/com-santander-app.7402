.class Lbtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lbtp;


# direct methods
.method constructor <init>(Lbtp;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lbtq;->a:Lbtp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbtq;->a:Lbtp;

    invoke-static {v0}, Lbtp;->a(Lbtp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtq;->a:Lbtp;

    .line 77
    invoke-static {v0}, Lbtp;->b(Lbtp;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtq;->a:Lbtp;

    .line 78
    invoke-static {v0}, Lbtp;->b(Lbtp;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lbtq;->a:Lbtp;

    invoke-static {v0}, Lbtp;->b(Lbtp;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lbtq;->a:Lbtp;

    invoke-static {v0}, Lbtp;->c(Lbtp;)Lbtt;

    move-result-object v0

    invoke-virtual {v0}, Lbtt;->b()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lbtq;->a:Lbtp;

    invoke-static {v0}, Lbtp;->c(Lbtp;)Lbtt;

    move-result-object v0

    invoke-virtual {v0}, Lbtt;->a()V

    goto :goto_0
.end method
