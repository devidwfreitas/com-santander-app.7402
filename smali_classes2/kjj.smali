.class Lkjj;
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
        "Lkic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkjh;


# direct methods
.method constructor <init>(Lkjh;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lkjj;->a:Lkjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 135
    check-cast p1, Lkic;

    invoke-virtual {p0, p1}, Lkjj;->a(Lkic;)V

    return-void
.end method

.method public a(Lkic;)V
    .locals 2

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    iget-object v0, p0, Lkjj;->a:Lkjh;

    invoke-static {v0}, Lkjh;->a(Lkjh;)Lkjo;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lkic;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lkjj;->a:Lkjh;

    invoke-static {v0}, Lkjh;->a(Lkjh;)Lkjo;

    move-result-object v0

    invoke-virtual {p1}, Lkic;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkjo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lkjj;->a:Lkjh;

    invoke-static {v0}, Lkjh;->a(Lkjh;)Lkjo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkjo;->a(Lkic;)V

    goto :goto_0
.end method
