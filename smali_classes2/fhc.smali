.class public Lfhc;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/ContaMovementActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/ContaMovementActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lfhc;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lfhc;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lfhc;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 181
    iget-object v0, p0, Lfhc;->a:Lcom/santander/app/ContaMovementActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;Lfuy;)Lfuy;

    .line 182
    iget-object v0, p0, Lfhc;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->a(Lcom/santander/app/ContaMovementActivity;)V

    .line 183
    iget-object v0, p0, Lfhc;->a:Lcom/santander/app/ContaMovementActivity;

    invoke-static {v0}, Lcom/santander/app/ContaMovementActivity;->b(Lcom/santander/app/ContaMovementActivity;)V

    .line 184
    return-void
.end method
