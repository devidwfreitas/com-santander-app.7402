.class Lgxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lgxg;


# direct methods
.method constructor <init>(Lgxg;I)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lgxq;->b:Lgxg;

    iput p2, p0, Lgxq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lgxq;->b:Lgxg;

    invoke-static {v0}, Lgxg;->j(Lgxg;)Lhya;

    move-result-object v0

    iget-object v1, p0, Lgxq;->b:Lgxg;

    invoke-static {v1}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lgxq;->a:I

    invoke-interface {v0, v1, v2}, Lhya;->a(Landroid/content/Context;I)V

    .line 568
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0x9

    .line 554
    iget v0, p0, Lgxq;->a:I

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lgxq;->b:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    invoke-interface {v0}, Lgxu;->d()V

    .line 563
    :goto_0
    return-void

    .line 557
    :cond_0
    if-eq p1, v1, :cond_1

    .line 558
    iget-object v0, p0, Lgxq;->b:Lgxg;

    invoke-static {v0}, Lgxg;->h(Lgxg;)Lgxu;

    move-result-object v0

    invoke-interface {v0}, Lgxu;->c()V

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lgxq;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lgxq;->b:Lgxg;

    invoke-static {v0}, Lgxg;->j(Lgxg;)Lhya;

    move-result-object v0

    iget-object v1, p0, Lgxq;->b:Lgxg;

    invoke-static {v1}, Lgxg;->i(Lgxg;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lgxq;->a:I

    invoke-interface {v0, v1, v2}, Lhya;->b(Landroid/content/Context;I)V

    .line 573
    return-void
.end method
