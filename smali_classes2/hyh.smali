.class Lhyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lhyg;


# direct methods
.method constructor <init>(Lhyg;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lhyh;->a:Lhyg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lhyh;->a:Lhyg;

    iget-object v0, v0, Lhyg;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    .line 203
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lhyh;->a:Lhyg;

    iget-object v0, v0, Lhyg;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0, p1}, Lhxy;->a(I)V

    .line 199
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lhyh;->a:Lhyg;

    iget-object v0, v0, Lhyg;->a:Lhye;

    iget-object v0, v0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->a:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    .line 207
    return-void
.end method
