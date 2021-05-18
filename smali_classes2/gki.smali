.class public Lgki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgki;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lgki;->a:Lgki;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https://chat.santander.com.br"

    iput-object v0, p0, Lgki;->c:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static a()Lgki;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lgki;->a:Lgki;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lgki;

    invoke-direct {v0}, Lgki;-><init>()V

    sput-object v0, Lgki;->a:Lgki;

    .line 27
    :cond_0
    sget-object v0, Lgki;->a:Lgki;

    return-object v0
.end method

.method public static a(Lgki;)V
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lgki;->a:Lgki;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lgki;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lgki;->b:Z

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgki;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lgki;->b:Z

    return v0
.end method
