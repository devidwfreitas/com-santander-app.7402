.class Lhye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lhyd;


# direct methods
.method constructor <init>(Lhyd;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lhye;->a:Lhyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->b:Lhyb;

    new-instance v1, Lhyg;

    invoke-direct {v1, p0}, Lhyg;-><init>(Lhye;)V

    invoke-static {v0, v1}, Lhyb;->a(Lhyb;Lhxy;)V

    .line 216
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lhye;->a:Lhyd;

    iget-object v0, v0, Lhyd;->b:Lhyb;

    new-instance v1, Lhyf;

    invoke-direct {v1, p0}, Lhyf;-><init>(Lhye;)V

    invoke-static {v0, v1}, Lhyb;->a(Lhyb;Lhxy;)V

    .line 183
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lhye;->a()V

    .line 221
    return-void
.end method
