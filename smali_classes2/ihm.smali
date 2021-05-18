.class public Lihm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lihm;->a:Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligl;

    .line 80
    const-string v1, "Outros_PropostasEmAberto_Acao"

    invoke-virtual {v0}, Ligl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lihm;->a:Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/formalizacaodigital/presentation/ListagemPropostasActivity;->a(Ligl;)V

    .line 83
    return-void
.end method
