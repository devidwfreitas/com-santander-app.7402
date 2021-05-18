.class public Lhde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPCondicoesContratoActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lhde;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lhde;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-virtual {v0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->onBackPressed()V

    .line 71
    return-void
.end method
