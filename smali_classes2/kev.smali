.class public Lkev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lkev;->a:Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lkev;->a:Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;

    invoke-static {v0}, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;->a(Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 115
    return-void
.end method
