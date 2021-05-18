.class public Ljkf;
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
    .line 273
    iput-object p1, p0, Ljkf;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Ljkf;->a:Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;->d(Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 277
    return-void
.end method
