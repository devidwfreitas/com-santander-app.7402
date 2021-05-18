.class public Liar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)V
    .locals 1

    .prologue
    .line 301
    iput-object p1, p0, Liar;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Liar;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Liar;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/120"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 311
    iput p4, p0, Liar;->b:I

    .line 312
    iget-object v0, p0, Liar;->a:Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-static {v0}, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;->b(Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/120"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method
