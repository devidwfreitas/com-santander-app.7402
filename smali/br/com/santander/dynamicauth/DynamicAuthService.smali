.class public Lbr/com/santander/dynamicauth/DynamicAuthService;
.super Ljava/lang/Object;


# static fields
.field private static errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

.field private static volatile mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    sput-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static challenge(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    .locals 1

    invoke-static {p0, p2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->setUp(Landroid/content/Context;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V

    new-instance v0, Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-direct {v0}, Lbr/com/santander/dynamicauth/models/OSGModel;-><init>()V

    sput-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    sget-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v0, p1}, Lbr/com/santander/dynamicauth/models/OSGModel;->setParameters(Lbr/com/santander/dynamicauth/models/OSGParametersModel;)V

    invoke-static {p0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->identifyChallenge(Landroid/content/Context;)V

    return-void
.end method

.method static dismissLoading()V
    .locals 0

    invoke-static {}, Lbr/com/santander/dynamicauth/features/main/a/a;->c()V

    return-void
.end method

.method private static getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;-><init>(Ljava/lang/String;)V

    sget-object v1, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static identifyChallenge()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;
    .locals 3

    new-instance v0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CHALLENGE_CODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;-><init>(Ljava/lang/String;)V

    sget-object v1, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->identifyChallengeType(Ljava/lang/String;)Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v0

    goto :goto_0
.end method

.method private static identifyChallenge(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_XML_INVALID:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v3, v3, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lbr/com/santander/dynamicauth/DynamicAuthService;->identifyChallenge()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v0

    invoke-static {}, Lbr/com/santander/dynamicauth/DynamicAuthService;->identifyOSGResult()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->setChallenge(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->FIRST_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0, p0, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->loadChallenge(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Landroid/content/Context;Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lkc;->a:[I

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v3, v3, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getChallenge()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v0

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->LAST_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0, p0, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->loadChallenge(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Landroid/content/Context;Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getChallenge()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v0

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->NEXT_ATTEMPT:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0, p0, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->loadChallenge(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Landroid/content/Context;Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lkc;->a:[I

    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getChallenge()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    sget v0, Lbr/com/santander/dynamicauth/R$string;->error_title_blocked_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lbr/com/santander/dynamicauth/R$string;->error_msg_blocked_device:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ok, entendi"

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v2, v3, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget v0, Lbr/com/santander/dynamicauth/R$string;->error_title_blocked_device_pwd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const-string v3, "Fechar"

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v2, v3, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    sget v0, Lbr/com/santander/dynamicauth/R$string;->error_msg_transaction_denied:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ok, entendi"

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v0, v2, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_XML_INVALID:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v3, v3, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private static identifyChallengeType(Ljava/lang/String;)Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;
    .locals 1

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CSO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CSO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_ANTIGO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_ANTIGO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_1
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_2
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_SMS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_SMS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_3
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_OTP:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_OTP:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_4
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_QRCODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_QRCODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_5
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CARD_PWD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CARD_PWD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_6
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_OTICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_OTICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static identifyError(Ljava/lang/String;)Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;
    .locals 1

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->SUCCESS_OSG_CODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->SUCCESS_OSG_CODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_BLOCKED_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_BLOCKED_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_1
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_CHANNEL_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_CHANNEL_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_2
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_FLOW_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_FLOW_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_3
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_IMPLEMENTATION_CONDITION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_IMPLEMENTATION_CONDITION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_4
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_FIELD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_FIELD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_5
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_FIELD_TYPE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_FIELD_TYPE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_6
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_PAREMETER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_PAREMETER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_7
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_REQUISITION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_REQUISITION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto :goto_0

    :cond_8
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_NO_ACTIVE_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_NO_ACTIVE_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_PARAMETERS_NOT_EQUALS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_PARAMETERS_NOT_EQUALS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_REDIS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_REDIS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_REQUIRED_FIELD_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_REQUIRED_FIELD_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_CONSULTIVE_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_CONSULTIVE_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_AA:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_AA:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_EG:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_EG:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_WC:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_WC:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_SR:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW_SR:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_11
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_DENIED:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_DENIED:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_PENULTIMATE_AUTHENTICATION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_PENULTIMATE_AUTHENTICATION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_NO_AUTHORIZED_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_NO_AUTHORIZED_DEVICE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_14
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_SECURITY_ELEVATION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_SECURITY_ELEVATION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_NOT_FOUND:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_INVALID:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_TRANSACTION_INVALID:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_17
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_UNKNOW:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_18
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_AUTHENTICATION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_OSG_CODE_INVALID_AUTHENTICATION:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    goto/16 :goto_0

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static identifyOSGResult()Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;
    .locals 3

    new-instance v0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->OSG_RESULT_CODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;-><init>(Ljava/lang/String;)V

    sget-object v1, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->mOSGModel:Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/models/OSGParametersModel;->getEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/models/OSGEntryModel;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGEntryModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->identifyError(Ljava/lang/String;)Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    move-result-object v0

    goto :goto_0
.end method

.method public static initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/error/view/ErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "ERROR_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ERROR_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ERROR_BTN"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ERROR_CODE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initLoadingToCardPassword(Landroid/content/Context;ZZZLbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CARD_PWD:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CARD_CVV"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CARD_DOCUMENT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CARD_EXPIRATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initLoadingToCso(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_CSO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CSO_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CSO_POS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CSO_SEQ"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initLoadingToIdSantender(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_OTP:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initLoadingToIdSantenderUsingQr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_IDSANTANDER_QRCODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "ID_SANTANDER_QR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initLoadingToSms(Landroid/content/Context;Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_SMS:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "ATTEMPT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initOpticalToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/blink/view/BlinkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CODE_TOKEN_OTICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TOKEN_OPTOCAL_SERIAL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TOKEN_OPTOCAL_VIDEO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static initToken(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/dynamicauth/features/main/view/LoadingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHALLENGE_TYPE"

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v2}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TOKEN_SHOW_SERIAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "OSG_ERROR"

    sget-object v2, Lbr/com/santander/dynamicauth/DynamicAuthService;->errorReceived:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static loadChallenge(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;Landroid/content/Context;Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    sget-object v0, Lkc;->a:[I

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v4, v4, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CSO_ID:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CSO_POSICAO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->CSO_SEQUENCIA:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1, v0, v1, v2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initLoadingToCso(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_CSO_SEQUENCE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v4, v4, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initLoadingToIdSantender(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ID_SANTANDER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initLoadingToIdSantenderUsingQr(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->ERRO_ID_SANTANDER:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v4, v4, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->TOKEN_FISICO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initToken(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1, p2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initLoadingToSms(Landroid/content/Context;Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v2, v2, v2, p2}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initLoadingToCardPassword(Landroid/content/Context;ZZZLbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->TOKEN_OTICO_VIDEO:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v0}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;->TOKEN_OTICO_CODE:Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;

    invoke-static {v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->getValueOSGData(Lbr/com/santander/dynamicauth/enums/DynamicAuthEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbr/com/santander/dynamicauth/DynamicAuthService;->initOpticalToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method static parserChallenge(Ljava/lang/String;)Lbr/com/santander/dynamicauth/models/OSGParametersModel;
    .locals 3

    new-instance v0, Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-direct {v0}, Lbr/com/santander/dynamicauth/models/OSGModel;-><init>()V

    new-instance v1, Lbr/com/santander/dynamicauth/a/a;

    invoke-direct {v1}, Lbr/com/santander/dynamicauth/a/a;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v0, Lbr/com/santander/dynamicauth/models/OSGModel;

    invoke-virtual {v1, v0, p0}, Lbr/com/santander/dynamicauth/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/santander/dynamicauth/models/OSGModel;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/models/OSGModel;->getParameters()Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setUp(Landroid/content/Context;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lbr/com/santander/dynamicauth/exception/DynamicAuthException;

    const-string v1, "DynamicAuthCallBack null"

    invoke-direct {v0, v1}, Lbr/com/santander/dynamicauth/exception/DynamicAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lbr/com/santander/dynamicauth/exception/DynamicAuthException;

    const-string v1, "App context null"

    invoke-direct {v0, v1}, Lbr/com/santander/dynamicauth/exception/DynamicAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->getInstance()Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbr/com/santander/dynamicauth/models/DynamicAuthParameters;->setCallBack(Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V

    return-void
.end method
