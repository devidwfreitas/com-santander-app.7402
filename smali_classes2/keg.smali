.class public Lkeg;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/AporteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/AporteActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lkeg;->a:Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Land;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lgmx;

    invoke-virtual {p0, p1}, Lkeg;->a(Lgmx;)V

    return-void
.end method

.method public a(Lgmx;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lkeg;->a:Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-virtual {p1}, Lgmx;->f()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/previdencia/presentation/AporteActivity;->a(Lcom/santander/app/previdencia/presentation/AporteActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;

    .line 117
    return-void
.end method
