.class Llmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Llmm;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Llmm;->a:Llmi;

    invoke-static {v0}, Llmi;->e(Llmi;)V

    .line 222
    iget-object v0, p0, Llmm;->a:Llmi;

    invoke-static {v0}, Llmi;->f(Llmi;)Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Llmm;->a:Llmi;

    invoke-static {v0}, Llmi;->c(Llmi;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Llmm;->a:Llmi;

    invoke-static {v1}, Llmi;->f(Llmi;)Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Llmm;->a:Llmi;

    invoke-static {v0}, Llmi;->c(Llmi;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Llmm;->a:Llmi;

    invoke-static {v1}, Llmi;->c(Llmi;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Llmm;->a:Llmi;

    invoke-static {v0}, Llmi;->b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    iget-object v1, p0, Llmm;->a:Llmi;

    invoke-static {v1}, Llmi;->c(Llmi;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    return-void
.end method
