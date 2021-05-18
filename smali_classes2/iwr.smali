.class Liwr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liwq;


# direct methods
.method constructor <init>(Liwq;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Liwr;->a:Liwq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->A()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "idsHab_MsgS1"

    .line 44
    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 45
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Liwr;->a:Liwq;

    invoke-static {v0}, Liwq;->a(Liwq;)Ljav;

    move-result-object v0

    invoke-interface {v0}, Ljav;->b()V

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 48
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    .line 49
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    :cond_2
    iget-object v0, p0, Liwr;->a:Liwq;

    invoke-static {v0}, Liwq;->a(Liwq;)Ljav;

    move-result-object v0

    invoke-interface {v0}, Ljav;->c()V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Liwr;->a:Liwq;

    invoke-static {v0}, Liwq;->b(Liwq;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Liwr;->a:Liwq;

    invoke-static {v2}, Liwq;->b(Liwq;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const-class v3, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
