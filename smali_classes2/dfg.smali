.class public final Ldfg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpi",
            "<",
            "Ldfo;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final c:Ldfi;

.field private static final d:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<",
            "Ldfo;",
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

    sput-object v0, Ldfg;->a:Lcpi;

    new-instance v0, Ldfh;

    invoke-direct {v0}, Ldfh;-><init>()V

    sput-object v0, Ldfg;->d:Lcpd;

    new-instance v0, Lcox;

    const-string v1, "Common.API"

    sget-object v2, Ldfg;->d:Lcpd;

    sget-object v3, Ldfg;->a:Lcpi;

    invoke-direct {v0, v1, v2, v3}, Lcox;-><init>(Ljava/lang/String;Lcpd;Lcpi;)V

    sput-object v0, Ldfg;->b:Lcox;

    new-instance v0, Ldfj;

    invoke-direct {v0}, Ldfj;-><init>()V

    sput-object v0, Ldfg;->c:Ldfi;

    return-void
.end method
