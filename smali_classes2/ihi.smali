.class public Lihi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lihi;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 141
    const-string v0, "Outros_PropostasEmAberto_Desistir_Acao"

    iget-object v1, p0, Lihi;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligg;

    move-result-object v1

    invoke-virtual {v1}, Ligg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lihi;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lihi;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    iget-object v1, p0, Lihi;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    const-string v2, "Aten\u00e7\u00e3o"

    const-string v3, "Deseja realmente cancelar essa proposta?"

    invoke-static {v0, v1, v2, v3}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
