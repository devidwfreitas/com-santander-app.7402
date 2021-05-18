.class Lhwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lhuq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhwt;

.field final synthetic b:Lhwu;


# direct methods
.method constructor <init>(Lhwu;Lhwt;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lhwv;->b:Lhwu;

    iput-object p2, p0, Lhwv;->a:Lhwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhuq;)V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p1}, Lhuq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lhwv;->a:Lhwt;

    invoke-virtual {p1}, Lhuq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    invoke-interface {v1, v0}, Lhwt;->a(I)V

    .line 54
    :goto_1
    return-void

    .line 46
    :cond_0
    const/16 v0, 0xd

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lhwv;->a:Lhwt;

    new-instance v1, Lhur;

    const-string v2, "N\u00e3o \u00e9 elegivel a CPU!"

    invoke-direct {v1, v2}, Lhur;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lhwt;->a(Lhur;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    iget-object v0, p0, Lhwv;->a:Lhwt;

    invoke-interface {v0}, Lhwt;->a()V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lhuq;

    invoke-virtual {p0, p1}, Lhwv;->a(Lhuq;)V

    return-void
.end method
