.class public Ljkj;
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
    .line 180
    iput-object p1, p0, Ljkj;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ljkj;->a:Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;->goAplicacaoPoupanca(Landroid/view/View;)V

    .line 184
    return-void
.end method
