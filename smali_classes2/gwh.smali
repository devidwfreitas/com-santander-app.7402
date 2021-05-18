.class Lgwh;
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
        "Ljxa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgwc;

.field final synthetic b:Lgwe;


# direct methods
.method constructor <init>(Lgwe;Lgwc;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgwh;->b:Lgwe;

    iput-object p2, p0, Lgwh;->a:Lgwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Ljxa;

    invoke-virtual {p0, p1}, Lgwh;->a(Ljxa;)V

    return-void
.end method

.method public a(Ljxa;)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lgwh;->a:Lgwc;

    invoke-interface {v0, p1}, Lgwc;->a(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lgwh;->a:Lgwc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgwc;->b(Lcom/santander/app/contacorrente/domain/SaldoDetalhado;)V

    goto :goto_0
.end method
