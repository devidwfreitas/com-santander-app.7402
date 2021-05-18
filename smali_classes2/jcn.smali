.class Ljcn;
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
        "Ljcg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljcm;


# direct methods
.method constructor <init>(Ljcm;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Ljcn;->a:Ljcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljcg;

    invoke-virtual {p0, p1}, Ljcn;->a(Ljcg;)V

    return-void
.end method

.method public a(Ljcg;)V
    .locals 2

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljcg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ljcn;->a:Ljcm;

    invoke-static {v0}, Ljcm;->a(Ljcm;)Ljcl;

    move-result-object v0

    invoke-interface {v0, p1}, Ljcl;->a(Ljcg;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Ljcn;->a:Ljcm;

    invoke-static {v0}, Ljcm;->a(Ljcm;)Ljcl;

    move-result-object v0

    invoke-interface {v0, p1}, Ljcl;->b(Ljcg;)V

    goto :goto_0
.end method
