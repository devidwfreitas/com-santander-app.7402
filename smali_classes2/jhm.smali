.class public Ljhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ljhm;->a:Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljhm;->a:Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;

    invoke-static {v0}, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->a(Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    iget-object v0, p0, Ljhm;->a:Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;

    invoke-virtual {v0}, Lcom/santander/app/investimentos/fundos/presentation/TermosActivity;->finish()V

    .line 68
    return-void
.end method
