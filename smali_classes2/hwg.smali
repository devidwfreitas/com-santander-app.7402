.class Lhwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhvc;


# instance fields
.field final synthetic a:Lhwc;


# direct methods
.method constructor <init>(Lhwc;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lhwg;->a:Lhwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lhwg;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lhwg;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->e()V

    .line 190
    iget-object v0, p0, Lhwg;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    goto :goto_0
.end method

.method public a(Lhgb;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lhwg;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lhwg;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0, p1}, Lhvv;->a(Lhgb;)V

    .line 182
    iget-object v0, p0, Lhwg;->a:Lhwc;

    invoke-static {v0}, Lhwc;->a(Lhwc;)Lhvv;

    move-result-object v0

    invoke-interface {v0}, Lhvv;->d()V

    goto :goto_0
.end method
