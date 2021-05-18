.class public Lbr/com/santander/dynamicauth/features/cardpassword/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

.field private b:Lbr/com/santander/uisdk/edittext/SantanderEditText;

.field private c:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private d:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private e:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_title:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->e:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_numeric_field:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/edittext/SantanderEditText;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->b:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_error_text_view:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_numeric_layout:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_confirm_button:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->f:Landroid/widget/Button;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_fechar:I

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->d:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->d:Lbr/com/santander/uisdk/textview/SantanderTextView;

    invoke-virtual {v0, p0}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->e:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->card_password_title:I

    invoke-virtual {v1, v2}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ATTEMPT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v2, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->FIRST_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    if-ne v0, v1, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setVisibility(I)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->NEXT_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->card_password_tente_novamente:I

    invoke-virtual {v0, v2}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->e:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->card_password_title:I

    invoke-virtual {v1, v2}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->LAST_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->card_password_ultima_tentativa:I

    invoke-virtual {v0, v2}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method private c()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->b:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    and-int/2addr v0, v1

    iget-object v3, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->b:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    invoke-virtual {v3}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setVisibility(I)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    const-string v2, "Digite a senha."

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbr/com/santander/dynamicauth/R$drawable;->style_red_botton_border:I

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    invoke-virtual {v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c:Lbr/com/santander/uisdk/textview/SantanderTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setVisibility(I)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbr/com/santander/dynamicauth/R$drawable;->style_gray_botton_border:I

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onFinish()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_confirm_button:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;

    invoke-direct {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;-><init>()V

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CARD_PWD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setAuthType(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->b:Lbr/com/santander/uisdk/edittext/SantanderEditText;

    invoke-virtual {v1}, Lbr/com/santander/uisdk/edittext/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setData(Ljava/lang/Object;)V

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a:Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_card_password_fechar:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/cardpassword/a/a;->a()V

    goto :goto_0
.end method
