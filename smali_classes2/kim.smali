.class Lkim;
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
    .line 124
    iput-object p1, p0, Lkim;->a:Lkik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 132
    const-string v1, "Outros_RecargaDeTelefone_Recarga_ValorSelecionado_Acao"

    iget-object v0, p0, Lkim;->a:Lkik;

    invoke-static {v0}, Lkik;->c(Lkik;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lkim;->a:Lkik;

    invoke-static {v2}, Lkik;->b(Lkik;)Lcom/santander/app/widget/Carrossel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqa;

    invoke-virtual {v0}, Lfqa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
