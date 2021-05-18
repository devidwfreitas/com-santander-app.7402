.class public Lihh;
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
    .line 127
    iput-object p1, p0, Lihh;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 130
    const-string v0, "Outros_PropostasEmAberto_Confirmar_Acao"

    iget-object v1, p0, Lihh;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-static {v1}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->a(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;)Ligg;

    move-result-object v1

    invoke-virtual {v1}, Ligg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lihh;->a:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    invoke-virtual {v0}, Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;->b()V

    .line 133
    return-void
.end method
