.class public Ljkc;
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
    .line 235
    iput-object p1, p0, Ljkc;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Ljkc;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->c(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 239
    iget-object v0, p0, Ljkc;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    iget-object v1, p0, Ljkc;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-virtual {v1}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b89

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmyo;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    return-void
.end method
