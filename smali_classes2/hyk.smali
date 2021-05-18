.class Lhyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhgf;


# instance fields
.field final synthetic a:Lhxy;

.field final synthetic b:Z

.field final synthetic c:Lhyb;


# direct methods
.method constructor <init>(Lhyb;Lhxy;Z)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lhyk;->c:Lhyb;

    iput-object p2, p0, Lhyk;->a:Lhxy;

    iput-boolean p3, p0, Lhyk;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lhyk;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    .line 321
    return-void
.end method

.method public a(Lhfi;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lhyk;->c:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->j()V

    .line 311
    iget-boolean v0, p0, Lhyk;->b:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lhyk;->c:Lhyb;

    iget-object v1, p0, Lhyk;->a:Lhxy;

    invoke-static {v0, v1}, Lhyb;->b(Lhyb;Lhxy;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lhyk;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    goto :goto_0
.end method

.method public a(Lhfx;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lhyk;->c:Lhyb;

    invoke-static {v0}, Lhyb;->b(Lhyb;)Lhxo;

    move-result-object v0

    invoke-virtual {v0}, Lhxo;->i()V

    .line 305
    iget-object v0, p0, Lhyk;->a:Lhxy;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lhxy;->a(I)V

    .line 306
    return-void
.end method
