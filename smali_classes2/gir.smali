.class Lgir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgio;


# direct methods
.method constructor <init>(Lgio;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgir;->a:Lgio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 129
    check-cast p1, Lgig;

    .line 130
    invoke-virtual {p1}, Lgig;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1}, Lgig;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lgir;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->b(Lgig;)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lgir;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->a(Lgig;)V

    .line 134
    const-string v0, "Cartoes_ParcelamentoDeFatura_ReferOper"

    invoke-virtual {p1}, Lgig;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
