.class Lhyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lhxy;

.field final synthetic b:Lhyb;


# direct methods
.method constructor <init>(Lhyb;Lhxy;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lhyd;->b:Lhyb;

    iput-object p2, p0, Lhyd;->a:Lhxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lhyd;->b:Lhyb;

    new-instance v1, Lhye;

    invoke-direct {v1, p0}, Lhye;-><init>(Lhyd;)V

    invoke-static {v0, v1}, Lhyb;->c(Lhyb;Lhxy;)V

    .line 223
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lhyd;->a:Lhxy;

    invoke-interface {v0, p1}, Lhxy;->a(I)V

    .line 149
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lhyd;->a()V

    .line 228
    return-void
.end method
