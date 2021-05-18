.class public final Ldpt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpi",
            "<",
            "Ldql;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpi",
            "<",
            "Ldql;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<",
            "Ldql;",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<",
            "Ldql;",
            "Ldpw;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/common/api/Scope;

.field public static final f:Lcom/google/android/gms/common/api/Scope;

.field public static final g:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcox",
            "<",
            "Ldpw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcpi;

    invoke-direct {v0}, Lcpi;-><init>()V

    sput-object v0, Ldpt;->a:Lcpi;

    new-instance v0, Lcpi;

    invoke-direct {v0}, Lcpi;-><init>()V

    sput-object v0, Ldpt;->b:Lcpi;

    new-instance v0, Ldpu;

    invoke-direct {v0}, Ldpu;-><init>()V

    sput-object v0, Ldpt;->c:Lcpd;

    new-instance v0, Ldpv;

    invoke-direct {v0}, Ldpv;-><init>()V

    sput-object v0, Ldpt;->d:Lcpd;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldpt;->e:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldpt;->f:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcox;

    const-string v1, "SignIn.API"

    sget-object v2, Ldpt;->c:Lcpd;

    sget-object v3, Ldpt;->a:Lcpi;

    invoke-direct {v0, v1, v2, v3}, Lcox;-><init>(Ljava/lang/String;Lcpd;Lcpi;)V

    sput-object v0, Ldpt;->g:Lcox;

    new-instance v0, Lcox;

    const-string v1, "SignIn.INTERNAL_API"

    sget-object v2, Ldpt;->d:Lcpd;

    sget-object v3, Ldpt;->b:Lcpi;

    invoke-direct {v0, v1, v2, v3}, Lcox;-><init>(Ljava/lang/String;Lcpd;Lcpi;)V

    sput-object v0, Ldpt;->h:Lcox;

    return-void
.end method
