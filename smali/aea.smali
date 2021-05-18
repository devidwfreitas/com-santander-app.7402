.class public Laea;
.super Ljava/lang/Object;


# static fields
.field private static a:Laea;


# instance fields
.field private b:Laee;

.field private c:Lji;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Laea;->a:Laea;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laea;
    .locals 2

    sget-object v0, Laea;->a:Laea;

    if-nez v0, :cond_0

    new-instance v0, Laea;

    invoke-direct {v0}, Laea;-><init>()V

    sput-object v0, Laea;->a:Laea;

    sget-object v1, Laee;->USER_SANTANDER:Laee;

    invoke-direct {v0, v1}, Laea;->a(Laee;)V

    :cond_0
    sget-object v0, Laea;->a:Laea;

    return-object v0
.end method

.method private a(Laee;)V
    .locals 0

    iput-object p1, p0, Laea;->b:Laee;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    sget-object v0, Laee;->USER_SANTANDER:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_6

    sget-object v0, Laee;->USER_PRIVATE:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Laee;->USER_PRIVATE:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Laee;->USER_JOVEM_PROFISSIONAL:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object v0, Laee;->USER_JOVEM_PROFISSIONAL:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_0

    :cond_1
    sget-object v0, Laee;->USER_SELECT:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object v0, Laee;->USER_SELECT:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_0

    :cond_2
    sget-object v0, Laee;->USER_UNIVERSIDADES:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    sget-object v0, Laee;->USER_UNIVERSIDADES:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_0

    :cond_3
    sget-object v0, Laee;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object v0, Laee;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_0

    :cond_4
    sget-object v0, Laee;->USER_VAN_GOGH:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_5

    sget-object v0, Laee;->USER_VAN_GOGH:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_0

    :cond_5
    sget-object v0, Laee;->USER_VAN_GOGH_UNIVERSIDADES:Laee;

    invoke-virtual {v0}, Laee;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object v0, Laee;->USER_VAN_GOGH_UNIVERSIDADES:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_0

    :cond_6
    sget-object v0, Laee;->USER_SANTANDER:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

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

    invoke-virtual {p0, v0}, Laea;->a(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laee;->USER_SANTANDER:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Laee;->USER_PRIVATE:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laee;->USER_PRIVATE:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_1

    :cond_1
    sget-object v0, Laee;->USER_JOVEM_PROFISSIONAL:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Laee;->USER_JOVEM_PROFISSIONAL:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_1

    :cond_2
    sget-object v0, Laee;->USER_SELECT:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laee;->USER_SELECT:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_1

    :cond_3
    sget-object v0, Laee;->USER_UNIVERSIDADES:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Laee;->USER_UNIVERSIDADES:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_1

    :cond_4
    sget-object v0, Laee;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Laee;->USER_UNIVERSIDADES_JOVEM_PROFISSIONAL:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_1

    :cond_5
    sget-object v0, Laee;->USER_VAN_GOGH:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Laee;->USER_VAN_GOGH:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto :goto_1

    :cond_6
    sget-object v0, Laee;->USER_VAN_GOGH_UNIVERSIDADES:Laee;

    invoke-virtual {v0}, Laee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Laee;->USER_VAN_GOGH_UNIVERSIDADES:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto/16 :goto_1

    :cond_7
    sget-object v0, Laee;->USER_SANTANDER:Laee;

    invoke-direct {p0, v0}, Laea;->a(Laee;)V

    goto/16 :goto_1
.end method

.method public a(Lji;)V
    .locals 0

    iput-object p1, p0, Laea;->c:Lji;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Laea;->d:Z

    return-void
.end method

.method public b()Laee;
    .locals 1

    iget-object v0, p0, Laea;->b:Laee;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Laea;->a:Laea;

    return-void
.end method

.method public d()Lji;
    .locals 1

    iget-object v0, p0, Laea;->c:Lji;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Laea;->d:Z

    return v0
.end method
