.class public Lkwt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "step/open"

.field public static final B:Ljava/lang/String; = "step/continue"

.field public static final C:Ljava/lang/String; = "step/finish"

.field public static final D:Ljava/lang/String; = "document/save"

.field public static final E:Ljava/lang/String; = "document/list/%s"

.field public static final F:Ljava/lang/String; = "document/get/%s"

.field public static final G:Ljava/lang/String; = "document/update"

.field public static final H:Ljava/lang/String; = "satisfaction-survey-user-data"

.field public static final I:Ljava/lang/String; = "satisfaction-survey-user-data/%s"

.field public static J:Ljava/lang/String; = null

.field public static final a:Ljava/lang/String; = "d3bdd210aab201341b69005056906329"

.field public static final b:Ljava/lang/String; = "dd/MM/yyyy"

.field public static final c:Ljava/lang/String; = "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

.field public static final d:Ljava/lang/String; = "https://esbapihi.santander.com.br/"

.field public static final e:Ljava/lang/String; = "http://santandersdc-dev.continuousplatform.com/api/"

.field public static final f:Ljava/lang/String; = "insurances/v1/products"

.field public static final g:Ljava/lang/String; = "insurances/v1/products/details"

.field public static final h:Ljava/lang/String; = "insurances/v1/beneficiaries"

.field public static final i:Ljava/lang/String; = "insurances/v1/billings"

.field public static final j:Ljava/lang/String; = "insurances/v1/details"

.field public static final k:Ljava/lang/String; = "insurances/v1/coverage"

.field public static final l:Ljava/lang/String; = "losses/v1/all"

.field public static final m:Ljava/lang/String; = "losses/v1/causes/%s/%s/%s/%s"

.field public static final n:Ljava/lang/String; = "losses/v1/causes"

.field public static final o:Ljava/lang/String; = "losses/v1/patrimony-notification"

.field public static final p:Ljava/lang/String; = "losses/v1/document-status/%s/%s/%s/%s"

.field public static final q:Ljava/lang/String; = "losses/v1/document-status"

.field public static final r:Ljava/lang/String; = "losses/v1/registry-document"

.field public static final s:Ljava/lang/String; = "losses/rescheduling-survey"

.field public static final t:Ljava/lang/String; = "losses/v1/details/%s/%s/%s/%s"

.field public static final u:Ljava/lang/String; = "losses/v1/details"

.field public static final v:Ljava/lang/String; = "losses/v1/notes/%s/%s/%s/%s"

.field public static final w:Ljava/lang/String; = "losses/v1/notes"

.field public static final x:Ljava/lang/String; = "losses/v1/bank-data"

.field public static final y:Ljava/lang/String; = "sinister-detail-key"

.field public static final z:Ljava/lang/String; = "userId"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "satisfaction-survey-question"

    sput-object v0, Lkwt;->J:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
