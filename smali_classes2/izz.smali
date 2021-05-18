.class public Lizz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lizz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lizz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    iget-object v0, v0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lizz;->a:Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V

    .line 233
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method
