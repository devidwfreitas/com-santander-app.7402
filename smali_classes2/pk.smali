.class Lpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lpc;


# direct methods
.method constructor <init>(Lpc;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lpk;->b:Lpc;

    iput-object p2, p0, Lpk;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lpk;->b:Lpc;

    invoke-static {v0}, Lpc;->Q(Lpc;)Lace;

    move-result-object v1

    iget-object v0, p0, Lpk;->a:Landroid/app/Dialog;

    sget v2, Lla;->dialog_pzr_campo_prazo:I

    .line 673
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 674
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " dias"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lace;->a(Ljava/lang/Integer;)V

    .line 675
    return-void
.end method
