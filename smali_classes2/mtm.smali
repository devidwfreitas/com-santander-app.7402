.class public Lmtm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lmtm;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lmtm;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    iget-object v1, p0, Lmtm;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->c(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lmtm;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-virtual {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->d()V

    .line 104
    iget-object v0, p0, Lmtm;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Lmtp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lmtm;->a:Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;)Lmtp;

    move-result-object v0

    invoke-interface {v0}, Lmtp;->a()V

    .line 107
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
