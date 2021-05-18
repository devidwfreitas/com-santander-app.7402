.class public Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbr/com/santander/dynamicauth/features/sms/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private g:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private h:Lbr/com/santander/uisdk/textview/SantanderTextView;

.field private i:Lbr/com/santander/dynamicauth/features/sms/a/a;

.field private j:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lkp;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkp;-><init>(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;JJ)V

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->j:Landroid/os/CountDownTimer;

    iput-object p1, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v6

    invoke-static {p1, v0, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a()V

    goto :goto_0
.end method

.method public static synthetic a(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/features/sms/a/a;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/sms/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Lbr/com/santander/dynamicauth/a/a/a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/santander/dynamicauth/a/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/a/a/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Token \\s*(-?\\d{6}(?:\\.\\d{6})?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "[a-zA-Z]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    new-instance v1, Lkq;

    invoke-direct {v1, p0}, Lkq;-><init>(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static synthetic d(Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c:Landroid/widget/Button;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbr/com/santander/dynamicauth/R$drawable;->style_gray_button:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_success:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_numeric_field:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/edittext/SantanderEditText;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_confirm_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c:Landroid/widget/Button;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_fechar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->g:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->f:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_error_text_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/textview/SantanderTextView;

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->h:Lbr/com/santander/uisdk/textview/SantanderTextView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->f:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v3, Lbr/com/santander/dynamicauth/R$string;->sms_título:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3f

    invoke-static {v1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "ATTEMPT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->h:Lbr/com/santander/uisdk/textview/SantanderTextView;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->FIRST_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    if-ne v0, v1, :cond_2

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v3, v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setVisibility(I)V

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->h:Lbr/com/santander/uisdk/textview/SantanderTextView;

    sget-object v3, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->NEXT_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    if-eq v0, v3, :cond_0

    sget-object v3, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->LAST_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    if-ne v0, v3, :cond_3

    :cond_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v3, Lbr/com/santander/dynamicauth/R$string;->sms_tente_novamente:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->g:Lbr/com/santander/uisdk/textview/SantanderTextView;

    invoke-virtual {v0, p0}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->c()V

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->f:Lbr/com/santander/uisdk/textview/SantanderTextView;

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget v3, Lbr/com/santander/dynamicauth/R$string;->sms_título:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/textview/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->d()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onFinish()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_confirm_button:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    new-instance v1, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_SMS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    iget-object v3, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;-><init>(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->d()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbr/com/santander/dynamicauth/R$id;->dynamic_auth_sms_fechar:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;

    invoke-direct {v2}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;-><init>()V

    :try_start_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    :cond_0
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v7, Lbr/com/santander/dynamicauth/features/sms/a/a;

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lbr/com/santander/dynamicauth/features/sms/a/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v6}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v7, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->i:Lbr/com/santander/dynamicauth/features/sms/a/a;

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_SMS_PHISHING:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2, v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setAuthType(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->i:Lbr/com/santander/dynamicauth/features/sms/a/a;

    invoke-virtual {v5}, Lbr/com/santander/dynamicauth/features/sms/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_SMS_PHISHING:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v8}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v5, v6, v7, v8}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_SMS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2, v5}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setAuthType(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    invoke-virtual {v2, v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setData(Ljava/lang/Object;)V

    iget-object v5, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->b:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getCallBack()Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    move-result-object v0

    invoke-interface {v0, v2}, Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;->onSuccess(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2, v1}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setAuthType(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v9, v9, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/sms/viewmodel/SmsViewModel;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method
