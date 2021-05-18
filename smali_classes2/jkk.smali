.class public Ljkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/presentation/SemProdutoActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Ljkk;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ljkk;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->goAplicacaoRendafixa(Landroid/view/View;)V

    .line 226
    return-void
.end method
