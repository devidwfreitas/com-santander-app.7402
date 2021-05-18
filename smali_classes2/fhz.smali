.class public Lfhz;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/FuturosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/FuturosActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lfhz;->a:Lcom/santander/app/FuturosActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lfhz;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lfhz;->a:Lcom/santander/app/FuturosActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/FuturosActivity;->a(Lcom/santander/app/FuturosActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 62
    new-instance v0, Lfia;

    iget-object v1, p0, Lfhz;->a:Lcom/santander/app/FuturosActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfia;-><init>(Lcom/santander/app/FuturosActivity;Lfhz;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfia;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method
