.class Lmtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lmte;


# direct methods
.method constructor <init>(Lmte;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmtg;->a:Lmte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lmtg;->a:Lmte;

    invoke-static {v0}, Lmte;->c(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->b(Landroid/text/TextWatcher;)V

    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "[^0-9]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lmtg;->a:Lmte;

    invoke-static {v1}, Lmte;->c(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lmtg;->a:Lmte;

    invoke-static {v1}, Lmte;->c(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(I)V

    .line 154
    iget-object v0, p0, Lmtg;->a:Lmte;

    invoke-static {v0}, Lmte;->c(Lmte;)Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/santander/app/transfergolden/presentation/LeituraInfoEditText;->a(Landroid/text/TextWatcher;)V

    .line 155
    return-void
.end method
