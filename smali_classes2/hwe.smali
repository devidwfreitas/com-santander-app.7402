.class Lhwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhvb;


# instance fields
.field final synthetic a:Lhwc;


# direct methods
.method constructor <init>(Lhwc;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lhwe;->a:Lhwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhuo;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    .line 128
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    iget-object v1, p0, Lhwe;->a:Lhwc;

    invoke-static {v1}, Lhwc;->b(Lhwc;)Lhuz;

    move-result-object v1

    invoke-interface {v1}, Lhuz;->a()Lhxn;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lhvv;->a(Lhxn;Z)V

    .line 129
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->b(Lhwc;)Lhuz;

    move-result-object v0

    invoke-interface {v0}, Lhuz;->a()Lhxn;

    move-result-object v0

    invoke-static {v0}, Lhxi;->h(Lhxn;)V

    .line 130
    invoke-static {}, Lhxi;->a()V

    goto :goto_0
.end method

.method public a(Lhur;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    .line 138
    iget-object v0, p0, Lhwe;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    iget-object v1, p0, Lhwe;->a:Lhwc;

    invoke-static {v1}, Lhwc;->b(Lhwc;)Lhuz;

    move-result-object v1

    invoke-interface {v1}, Lhuz;->a()Lhxn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lhvv;->a(Lhxn;Z)V

    .line 139
    invoke-virtual {p1}, Lhur;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhxi;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
