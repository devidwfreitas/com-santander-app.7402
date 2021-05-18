.class public Ldti;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "activity_recognition"

.field public static final b:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<",
            "Lcpa;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ldtl;

.field private static final d:Lcpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpi",
            "<",
            "Ldjh;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<",
            "Ldjh;",
            "Lcpa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcpi;

    invoke-direct {v0}, Lcpi;-><init>()V

    sput-object v0, Ldti;->d:Lcpi;

    new-instance v0, Ldtj;

    invoke-direct {v0}, Ldtj;-><init>()V

    sput-object v0, Ldti;->e:Lcpd;

    new-instance v0, Lcox;

    const-string v1, "ActivityRecognition.API"

    sget-object v2, Ldti;->e:Lcpd;

    sget-object v3, Ldti;->d:Lcpi;

    invoke-direct {v0, v1, v2, v3}, Lcox;-><init>(Ljava/lang/String;Lcpd;Lcpi;)V

    sput-object v0, Ldti;->b:Lcox;

    new-instance v0, Ldhq;

    invoke-direct {v0}, Ldhq;-><init>()V

    sput-object v0, Ldti;->c:Ldtl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
