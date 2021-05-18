.class public Ljhe;
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
    .line 164
    iput-object p1, p0, Ljhe;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Ljhe;->a:Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 168
    return-void
.end method
