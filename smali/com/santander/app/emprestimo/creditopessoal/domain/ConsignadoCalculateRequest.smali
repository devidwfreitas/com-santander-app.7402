.class public Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected contracts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "contracts"
    .end annotation
.end field

.field protected installmentsQuantity:Ljava/lang/String;
    .annotation runtime Leks;
        a = "installmentsQuantity"
    .end annotation
.end field

.field protected installmentsValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "installmentsValue"
    .end annotation
.end field

.field protected requestedValue:Ljava/lang/String;
    .annotation runtime Leks;
        a = "requestedValue"
    .end annotation
.end field

.field protected secureFlag:Ljava/lang/String;
    .annotation runtime Leks;
        a = "secureFlag"
    .end annotation
.end field


# direct methods
.method public constructor <init>(FI)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;->installmentsValue:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;->requestedValue:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;->installmentsQuantity:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;->setSecureFlag(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public setSecureFlag(Z)V
    .locals 1

    .prologue
    .line 34
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateRequest;->secureFlag:Ljava/lang/String;

    .line 35
    return-void

    .line 34
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
