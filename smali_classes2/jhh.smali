.class public Ljhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Ljhh;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 277
    const-string v0, "Investimentos_Fundos_Acao"

    const-string v1, "VerTodosOsFundos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Ljhh;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->f(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/components/view/buttontabhost/ButtonTabHost;->setSelectedButtonTab2()V

    .line 279
    iget-object v0, p0, Ljhh;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;Ljdv;)V

    .line 281
    return-void
.end method
