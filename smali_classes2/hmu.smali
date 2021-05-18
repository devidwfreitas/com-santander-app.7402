.class Lhmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhxy;


# instance fields
.field final synthetic a:Lhmt;


# direct methods
.method constructor <init>(Lhmt;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lhmu;->a:Lhmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->d()V

    .line 161
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->j()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 146
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->d()V

    .line 149
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->h()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->g()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->d()V

    .line 169
    iget-object v0, p0, Lhmu;->a:Lhmt;

    invoke-static {v0}, Lhmt;->a(Lhmt;)Lhmn;

    move-result-object v0

    invoke-interface {v0}, Lhmn;->i()V

    goto :goto_0
.end method
