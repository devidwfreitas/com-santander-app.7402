.class public Lbr/com/santander/dynamicauth/features/token/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->a:Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;

    invoke-virtual {p1}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TOKEN_SHOW_SERIAL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget v0, Lbr/com/santander/dynamicauth/R$id;->validation_serial_number_field:I

    invoke-virtual {p1, v0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    sget v0, Lbr/com/santander/dynamicauth/R$id;->validation_password_field:I

    invoke-virtual {p1, v0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->c:Landroid/widget/EditText;

    sget v0, Lbr/com/santander/dynamicauth/R$id;->token_continue:I

    invoke-virtual {p1, v0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->d:Ljava/util/Map;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1
.end method

.method private b()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onFinish()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->a:Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->token_continue:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/token/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->d:Ljava/util/Map;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->d:Ljava/util/Map;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    new-instance v1, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    iget-object v3, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->d:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;-><init>(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/a/a;->a:Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->finish()V

    :cond_1
    return-void
.end method
