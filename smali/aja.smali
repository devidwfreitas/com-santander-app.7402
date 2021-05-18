.class public Laja;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x22

.field private static d:Laja;


# instance fields
.field private b:Ljava/util/Properties;

.field private c:Ljava/io/InputStream;

.field private e:Lie;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Laja;
    .locals 1

    sget-object v0, Laja;->d:Laja;

    if-nez v0, :cond_0

    new-instance v0, Laja;

    invoke-direct {v0}, Laja;-><init>()V

    sput-object v0, Laja;->d:Laja;

    :cond_0
    sget-object v0, Laja;->d:Laja;

    return-object v0
.end method


# virtual methods
.method public a()Lie;
    .locals 1

    iget-object v0, p0, Laja;->e:Lie;

    return-object v0
.end method

.method public a(Lie;)V
    .locals 0

    iput-object p1, p0, Laja;->e:Lie;

    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Laja;->b:Ljava/util/Properties;

    return-void
.end method

.method public c()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Laja;->b:Ljava/util/Properties;

    return-object v0
.end method
