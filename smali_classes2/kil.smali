.class Lkil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lkik;


# direct methods
.method constructor <init>(Lkik;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lkil;->a:Lkik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "Outros_RecargaDeTelefone_Recarga_Acao"

    const-string v1, "SelecionarContaOrigem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lkil;->a:Lkik;

    invoke-static {v0}, Lkik;->a(Lkik;)Lcom/santander/app/widget/Carrossel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    .line 122
    return-void
.end method
