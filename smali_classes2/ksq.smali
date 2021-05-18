.class public final enum Lksq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lksq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lksq;

.field public static final enum INSTANCE:Lksq;


# instance fields
.field private beneficiaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field

.field private contactData:Lkqj;

.field private detailsResponse:Lkrg;

.field private familyId:Ljava/lang/String;

.field private getPreporsalResp:Lktj;

.field private idealProductResponse:Lkri;

.field private paymentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;"
        }
    .end annotation
.end field

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation
.end field

.field private quotationSelected:Lkrz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lksq;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lksq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lksq;->INSTANCE:Lksq;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lksq;

    sget-object v1, Lksq;->INSTANCE:Lksq;

    aput-object v1, v0, v2

    sput-object v0, Lksq;->$VALUES:[Lksq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lksq;->beneficiaries:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lksq;->questions:Ljava/util/List;

    .line 27
    new-instance v0, Lkqj;

    invoke-direct {v0}, Lkqj;-><init>()V

    iput-object v0, p0, Lksq;->contactData:Lkqj;

    .line 28
    new-instance v0, Lkrz;

    invoke-direct {v0}, Lkrz;-><init>()V

    iput-object v0, p0, Lksq;->quotationSelected:Lkrz;

    .line 29
    new-instance v0, Lktj;

    invoke-direct {v0}, Lktj;-><init>()V

    iput-object v0, p0, Lksq;->getPreporsalResp:Lktj;

    .line 30
    new-instance v0, Lkrg;

    invoke-direct {v0}, Lkrg;-><init>()V

    iput-object v0, p0, Lksq;->detailsResponse:Lkrg;

    .line 31
    new-instance v0, Lkri;

    invoke-direct {v0}, Lkri;-><init>()V

    iput-object v0, p0, Lksq;->idealProductResponse:Lkri;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lksq;->paymentList:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lksq;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lksq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lksq;

    return-object v0
.end method

.method public static values()[Lksq;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lksq;->$VALUES:[Lksq;

    invoke-virtual {v0}, [Lksq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lksq;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lksq;->beneficiaries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lksq;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    new-instance v0, Lkqj;

    invoke-direct {v0}, Lkqj;-><init>()V

    iput-object v0, p0, Lksq;->contactData:Lkqj;

    .line 116
    new-instance v0, Lkrz;

    invoke-direct {v0}, Lkrz;-><init>()V

    iput-object v0, p0, Lksq;->quotationSelected:Lkrz;

    .line 117
    new-instance v0, Lktj;

    invoke-direct {v0}, Lktj;-><init>()V

    iput-object v0, p0, Lksq;->getPreporsalResp:Lktj;

    .line 118
    new-instance v0, Lkrg;

    invoke-direct {v0}, Lkrg;-><init>()V

    iput-object v0, p0, Lksq;->detailsResponse:Lkrg;

    .line 119
    new-instance v0, Lkri;

    invoke-direct {v0}, Lkri;-><init>()V

    iput-object v0, p0, Lksq;->idealProductResponse:Lkri;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lksq;->familyId:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lksq;->paymentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    return-void
.end method

.method public getBeneficiaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lksq;->beneficiaries:Ljava/util/List;

    return-object v0
.end method

.method public getContactData()Lkqj;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lksq;->contactData:Lkqj;

    return-object v0
.end method

.method public getDetailsResponse()Lkrg;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lksq;->detailsResponse:Lkrg;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lksq;->familyId:Ljava/lang/String;

    return-object v0
.end method

.method public getGetPreporsalResp()Lktj;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lksq;->getPreporsalResp:Lktj;

    return-object v0
.end method

.method public getIdealProductResponse()Lkri;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lksq;->idealProductResponse:Lkri;

    return-object v0
.end method

.method public getPaymentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lksq;->paymentList:Ljava/util/List;

    return-object v0
.end method

.method public getPreporsalResp()Lktj;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lksq;->getPreporsalResp:Lktj;

    return-object v0
.end method

.method public getQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lksq;->questions:Ljava/util/List;

    return-object v0
.end method

.method public getQuotationSelected()Lkrz;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lksq;->quotationSelected:Lkrz;

    return-object v0
.end method

.method public setBeneficiaries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lksq;->beneficiaries:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setContactData(Lkqj;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lksq;->contactData:Lkqj;

    .line 85
    return-void
.end method

.method public setDetailsResponse(Lkrg;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lksq;->detailsResponse:Lkrg;

    .line 109
    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lksq;->familyId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setGetPreporsalResp(Lktj;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lksq;->getPreporsalResp:Lktj;

    .line 101
    return-void
.end method

.method public setIdealProductResponse(Lkri;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lksq;->idealProductResponse:Lkri;

    .line 61
    return-void
.end method

.method public setPaymentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lksq;->paymentList:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lksq;->questions:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setQuotationSelected(Lkrz;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lksq;->quotationSelected:Lkrz;

    .line 93
    return-void
.end method
