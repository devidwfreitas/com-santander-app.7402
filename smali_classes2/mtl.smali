.class public Lmtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmtl;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lmtl;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iget-object v0, p0, Lmtl;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lmtl;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 78
    iget-object v0, p0, Lmtl;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Lmtp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lmtl;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Lmtp;

    move-result-object v0

    invoke-interface {v0}, Lmtp;->a()V

    .line 81
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method
