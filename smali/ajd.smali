.class public Lajd;
.super Ljava/lang/Object;


# static fields
.field private static a:Lajd;


# instance fields
.field private b:Lji;

.field private c:Laju;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lajd;->a:Lajd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lajd;
    .locals 3

    const-class v1, Lajd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lajd;->a:Lajd;

    if-nez v0, :cond_0

    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    sput-object v0, Lajd;->a:Lajd;

    sget-object v2, Laju;->USER_SANTANDER:Laju;

    invoke-direct {v0, v2}, Lajd;->a(Laju;)V

    :cond_0
    sget-object v0, Lajd;->a:Lajd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Laju;)V
    .locals 0

    iput-object p1, p0, Lajd;->c:Laju;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    sget-object v0, Laju;->USER_SANTANDER:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_6

    sget-object v0, Laju;->USER_PRIVATE:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Laju;->USER_PRIVATE:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Laju;->USER_JOVEM_PROFISSIONAL:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Laju;->USER_JOVEM_PROFISSIONAL:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0

    :cond_1
    sget-object v0, Laju;->USER_SELECT:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object v0, Laju;->USER_SELECT:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0

    :cond_2
    sget-object v0, Laju;->USER_UNIVERSIDADES:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object v0, Laju;->USER_UNIVERSIDADES:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0

    :cond_3
    sget-object v0, Laju;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object v0, Laju;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0

    :cond_4
    sget-object v0, Laju;->USER_VAN_GOGH:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    sget-object v0, Laju;->USER_VAN_GOGH:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0

    :cond_5
    sget-object v0, Laju;->USER_VAN_GOGH_UNIVERSIDADES:Laju;

    invoke-virtual {v0}, Laju;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object v0, Laju;->USER_VAN_GOGH_UNIVERSIDADES:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0

    :cond_6
    sget-object v0, Laju;->USER_SANTANDER:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lajd;->a(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laju;->USER_SANTANDER:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laju;->USER_PRIVATE:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laju;->USER_PRIVATE:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_1

    :cond_1
    sget-object v0, Laju;->USER_JOVEM_PROFISSIONAL:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Laju;->USER_JOVEM_PROFISSIONAL:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_1

    :cond_2
    sget-object v0, Laju;->USER_SELECT:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laju;->USER_SELECT:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_1

    :cond_3
    sget-object v0, Laju;->USER_UNIVERSIDADES:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Laju;->USER_UNIVERSIDADES:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_1

    :cond_4
    sget-object v0, Laju;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Laju;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_1

    :cond_5
    sget-object v0, Laju;->USER_VAN_GOGH:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Laju;->USER_VAN_GOGH:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto :goto_1

    :cond_6
    sget-object v0, Laju;->USER_VAN_GOGH_UNIVERSIDADES:Laju;

    invoke-virtual {v0}, Laju;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Laju;->USER_VAN_GOGH_UNIVERSIDADES:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto/16 :goto_1

    :cond_7
    sget-object v0, Laju;->USER_SANTANDER:Laju;

    invoke-direct {p0, v0}, Lajd;->a(Laju;)V

    goto/16 :goto_1
.end method

.method public a(Lji;)V
    .locals 0

    iput-object p1, p0, Lajd;->b:Lji;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lajd;->d:Z

    return-void
.end method

.method public b()Laju;
    .locals 1

    iget-object v0, p0, Lajd;->c:Laju;

    return-object v0
.end method

.method public c()Lji;
    .locals 1

    iget-object v0, p0, Lajd;->b:Lji;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lajd;->d:Z

    return v0
.end method
