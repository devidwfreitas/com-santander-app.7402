.class Lfya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lfyd;

.field final synthetic b:Lfxv;


# direct methods
.method constructor <init>(Lfxv;Lfyd;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lfya;->b:Lfxv;

    iput-object p2, p0, Lfya;->a:Lfyd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lfya;->a:Lfyd;

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;->l(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lfya;->a:Lfyd;

    invoke-static {v0}, Lfyd;->c(Lfyd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 356
    :cond_0
    return-void
.end method
