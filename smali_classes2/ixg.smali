.class public Lixg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lixg;->a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 125
    new-instance v0, Ljqi;

    invoke-direct {v0}, Ljqi;-><init>()V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lixg;->a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-static {v2}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lixg;->a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-static {v2}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->c(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljqi;->j(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lixg;->a:Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->d(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)Ljac;

    move-result-object v1

    invoke-interface {v1, v0}, Ljac;->a(Ljqi;)V

    .line 130
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
