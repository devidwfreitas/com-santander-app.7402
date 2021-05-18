.class Lkjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lkjk;


# direct methods
.method constructor <init>(Lkjk;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lkjm;->a:Lkjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 417
    const-string v1, "Outros_RecargaDeTelefone_RecargaProgramada_Acao"

    iget-object v0, p0, Lkjm;->a:Lkjk;

    invoke-static {v0}, Lkjk;->c(Lkjk;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lkjm;->a:Lkjk;

    invoke-static {v2}, Lkjk;->b(Lkjk;)Lcom/santander/app/widget/Carrossel;

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

    .line 418
    return-void
.end method
