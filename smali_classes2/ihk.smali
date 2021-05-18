.class public Lihk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lihk;->b:Lcom/santander/app/formalizacaodigital/presentation/DetalheFormalizacaoDigitalActivity;

    iput-object p2, p0, Lihk;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lihk;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    const-string v0, "Outros_PropostasEmAberto_Desistir_PopUp_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method
