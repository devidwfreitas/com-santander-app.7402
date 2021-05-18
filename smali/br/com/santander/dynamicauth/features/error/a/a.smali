.class public Lbr/com/santander/dynamicauth/features/error/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_MSG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_BTN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_CODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_MSG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_BTN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_CODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/error/a/a;->a()V

    return-void
.end method

.method public static synthetic a(Lbr/com/santander/dynamicauth/features/error/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->img_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->e:Ljava/lang/String;

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_BLOCKED_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lbr/com/santander/dynamicauth/R$drawable;->ic_aviso:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->textview_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->textview_error_msg:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->c:Ljava/lang/String;

    :goto_2
    const/16 v2, 0x3f

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->textview_error_code:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->e:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->button_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->d:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lkk;

    invoke-direct {v1, p0}, Lkk;-><init>(Lbr/com/santander/dynamicauth/features/error/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    sget v1, Lbr/com/santander/dynamicauth/R$drawable;->ic_alerta:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->error_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->error_msg:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->c:Ljava/lang/String;

    :goto_6
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->error_msg:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_5
    const-string v1, ""

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    sget v2, Lbr/com/santander/dynamicauth/R$string;->error_btn:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/error/a/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    if-eqz p1, :cond_0

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onFinish()V

    :cond_0
    return-void
.end method
