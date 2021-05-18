.class Llmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Llmk;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v0, p0, Llmk;->a:Llmi;

    invoke-static {v0}, Llmi;->b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    move-result-object v0

    iget-object v1, p0, Llmk;->a:Llmi;

    invoke-static {v1}, Llmi;->c(Llmi;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Llmk;->a:Llmi;

    invoke-static {v0}, Llmi;->a(Llmi;)V

    .line 179
    iget-object v0, p0, Llmk;->a:Llmi;

    invoke-static {v0}, Llmi;->d(Llmi;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Llmk;->a:Llmi;

    invoke-static {v0}, Llmi;->d(Llmi;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
