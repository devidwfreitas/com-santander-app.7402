.class public Lbr/com/santander/dynamicauth/features/main/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

.field private static b:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    return-void
.end method

.method public constructor <init>(Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->finish()V

    :cond_0
    sput-object p1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-static {v0}, Lano;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->b:Landroid/app/Dialog;

    return-void
.end method

.method private a(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    const-class v2, Lbr/com/santander/dynamicauth/features/sms/view/SmsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    const-class v2, Lbr/com/santander/dynamicauth/features/idsantander/view/IdSantanderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "ID_SANTANDER_TYPE"

    const-string v2, "ID_SANTANDER_QR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ID_SANTANDER_QR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    const-class v2, Lbr/com/santander/dynamicauth/features/cso/view/CsoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CSO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CSO_POS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CSO_SEQ"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    const-class v2, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "TOKEN_SHOW_SERIAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(ZZZLbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    const-class v2, Lbr/com/santander/dynamicauth/features/cardpassword/view/CardPwdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CARD_CVV"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CARD_DOCUMENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CARD_EXPIRATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->finish()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    const-class v2, Lbr/com/santander/dynamicauth/features/idsantander/view/IdSantanderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "ID_SANTANDER_TYPE"

    const-string v2, "ID_SANTANDER_OTP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CHALLENGE_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CHALLENGE_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CSO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CSO_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CSO_SEQ"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CSO_POS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v3}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CSO_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v3, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v3}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CSO_SEQ"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v3, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v3}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CSO_POS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lbr/com/santander/dynamicauth/features/main/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_OTP:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/main/a/a;->d()V

    goto :goto_0

    :cond_2
    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_SMS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ATTEMPT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbr/com/santander/dynamicauth/features/main/a/a;->a(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_QRCODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ID_SANTANDER_QR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ID_SANTANDER_QR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbr/com/santander/dynamicauth/features/main/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CARD_PWD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CARD_CVV"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CARD_DOCUMENT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "CARD_EXPIRATION"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "ATTEMPT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    sget-object v4, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v4}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CARD_CVV"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v4, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v4}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CARD_DOCUMENT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v4, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v4}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CARD_EXPIRATION"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v4, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v4}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "ATTEMPT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v1, v3, v2, v0}, Lbr/com/santander/dynamicauth/features/main/a/a;->a(ZZZLbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TOKEN_SHOW_SERIAL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lbr/com/santander/dynamicauth/features/main/a/a;->a:Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TOKEN_SHOW_SERIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbr/com/santander/dynamicauth/features/main/a/a;->a(Z)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/features/main/a/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
