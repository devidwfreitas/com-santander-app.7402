.class Lhoq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoMatricula;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "registrationData"
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "promoterName"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dateOccurrence"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "dateSystem"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "nameAgreement"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "secureCode"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "birthDate"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "codeAgreement"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Leks;
        a = "ruleCode"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Leks;
        a = "agencyCode"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Leks;
        a = "baseDate"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Leks;
        a = "promoterCode"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Leks;
        a = "formalizationCode"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxInstalmentPda"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxInstalmentValue"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minInstalmentValue"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxInstalmentQuantity"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minInstalmentQuantity"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Leks;
        a = "maxOfferValue"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Leks;
        a = "minOfferValue"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Leks;
        a = "marginType"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Leks;
        a = "offerType"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Leks;
        a = "requiredDataFlag"
    .end annotation
.end field

.field private w:Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoRequiredData;
    .annotation runtime Leks;
        a = "requiredData"
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "liberations"
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhot;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "simulation"
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContract;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "contract"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lhoq;->x:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lhoq;->y:Ljava/util/List;

    .line 67
    iput-object v0, p0, Lhoq;->z:Ljava/util/List;

    .line 69
    iput-object v0, p0, Lhoq;->A:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lhoq;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhoq;->v:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
