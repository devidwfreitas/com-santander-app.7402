.class Lhyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhxy;

.field final synthetic c:Lhyb;


# direct methods
.method constructor <init>(Lhyb;ILhxy;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lhyc;->c:Lhyb;

    iput p2, p0, Lhyc;->a:I

    iput-object p3, p0, Lhyc;->b:Lhxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lhyc;->c:Lhyb;

    invoke-static {v0}, Lhyb;->a(Lhyb;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lhyc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lhyc;->b:Lhxy;

    invoke-interface {v0}, Lhxy;->a()V

    .line 120
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Lhyc;->c:Lhyb;

    invoke-static {v0}, Lhyb;->a(Lhyb;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lhyc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lhyc;->b:Lhxy;

    invoke-interface {v0, p1}, Lhxy;->a(I)V

    .line 114
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lhyc;->b:Lhxy;

    invoke-interface {v0}, Lhxy;->b()V

    .line 125
    return-void
.end method
