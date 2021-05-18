.class public Lhdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iput p3, v0, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->b:I

    .line 82
    iget-object v0, p0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, p0, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    iget-object v1, v1, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a:Landroid/support/v7/app/AppCompatActivity;

    new-instance v2, Lhdl;

    invoke-direct {v2, p0, p3}, Lhdl;-><init>(Lhdk;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->a(Lcom/santander/app/dpp/DPPListaProgramadaActivity;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 146
    const/4 v0, 0x1

    return v0
.end method
