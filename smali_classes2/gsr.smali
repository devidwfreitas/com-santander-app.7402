.class public Lgsr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lgsr;->a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 110
    const-string v0, "Cancelar"

    invoke-static {v0}, Lgst;->b(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lgsr;->a:Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-static {v0}, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;->c(Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 112
    return-void
.end method
