.class Lhyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lhye;


# direct methods
.method constructor <init>(Lhye;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lhyg;->a:Lhye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lhyg;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->b:Lhyb;

    new-instance v1, Lhyh;

    invoke-direct {v1, p0}, Lhyh;-><init>(Lhyg;)V

    invoke-static {v0, v1}, Lhyb;->b(Lhyb;Lhxy;)V

    .line 209
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 190
    iget-object v0, p0, Lhyg;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0, p1}, Lhxy;->a(I)V

    .line 191
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lhyg;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    .line 214
    return-void
.end method
