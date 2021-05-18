.class public Lmys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Leju;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lejm;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    sput-object v0, Lmys;->a:Leju;

    .line 23
    sget-object v0, Lmys;->a:Leju;

    const-string v1, "dd/MM/yyyy"

    invoke-virtual {v0, v1}, Leju;->a(Ljava/lang/String;)Leju;

    .line 24
    sget-object v0, Lmys;->a:Leju;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lmxm;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Lmxm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Leju;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Leju;

    .line 25
    sget-object v0, Lmys;->a:Leju;

    invoke-virtual {v0}, Leju;->g()Leju;

    .line 26
    sget-object v0, Lmys;->a:Leju;

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lejm;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    sput-object v0, Lmys;->a:Leju;

    .line 31
    sget-object v0, Lmys;->a:Leju;

    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Leju;->a(Ljava/lang/String;)Leju;

    .line 32
    sget-object v0, Lmys;->a:Leju;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lmxm;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Lmxm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Leju;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Leju;

    .line 33
    sget-object v0, Lmys;->a:Leju;

    invoke-virtual {v0}, Leju;->g()Leju;

    .line 34
    sget-object v0, Lmys;->a:Leju;

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    :try_start_0
    sget-object v0, Lmys;->a:Leju;

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Leka; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method
