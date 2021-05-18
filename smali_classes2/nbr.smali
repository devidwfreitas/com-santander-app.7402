.class Lnbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lnbq;


# direct methods
.method constructor <init>(Lnbq;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnbr;->a:Lnbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 67
    check-cast p1, Lnav;

    .line 69
    iget-object v0, p0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->b(Lnbp;)Lnbb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbb;->a(Lnav;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->h()V

    .line 71
    iget-object v0, p0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->f()V

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->b(Lnbp;)Lnbb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbb;->b(Lnav;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->d(Lnbp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnbr;->a:Lnbq;

    iget-object v1, v1, Lnbq;->a:Ljava/lang/String;

    new-instance v2, Lnbs;

    invoke-direct {v2, p0}, Lnbs;-><init>(Lnbr;)V

    invoke-static {v0, v1, v2}, Lgyy;->a(Landroid/content/Context;Ljava/lang/String;Lgyx;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lnbr;->a:Lnbq;

    iget-object v0, v0, Lnbq;->b:Lnbp;

    invoke-static {v0}, Lnbp;->c(Lnbp;)Lndw;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnav;->a()Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lndw;->a(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
