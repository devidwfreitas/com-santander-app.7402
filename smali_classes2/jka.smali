.class public Ljka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Ljka;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdb;

    .line 122
    iget-object v1, p0, Ljka;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-static {v1}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->a(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Ljks;

    move-result-object v1

    invoke-interface {v1, v0}, Ljks;->a(Ljdb;)V

    .line 123
    return-void
.end method
