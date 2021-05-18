.class final Lexn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lexh;

.field private final c:Lexh;

.field private final d:Lexi;


# direct methods
.method constructor <init>(Lexh;Lexh;Lexi;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lexn;->b:Lexh;

    .line 47
    iput-object p2, p0, Lexn;->c:Lexh;

    .line 48
    iput-object p3, p0, Lexn;->d:Lexi;

    .line 49
    iput-boolean p4, p0, Lexn;->a:Z

    .line 50
    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 101
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lexn;->a:Z

    return v0
.end method

.method b()Lexh;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lexn;->b:Lexh;

    return-object v0
.end method

.method c()Lexh;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lexn;->c:Lexh;

    return-object v0
.end method

.method d()Lexi;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lexn;->d:Lexi;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lexn;->c:Lexh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 81
    instance-of v1, p1, Lexn;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    check-cast p1, Lexn;

    .line 85
    iget-object v1, p0, Lexn;->b:Lexh;

    iget-object v2, p1, Lexn;->b:Lexh;

    .line 86
    invoke-static {v1, v2}, Lexn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexn;->c:Lexh;

    iget-object v2, p1, Lexn;->c:Lexh;

    .line 87
    invoke-static {v1, v2}, Lexn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lexn;->d:Lexi;

    iget-object v2, p1, Lexn;->d:Lexi;

    .line 88
    invoke-static {v1, v2}, Lexn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lexn;->b:Lexh;

    invoke-static {v0}, Lexn;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lexn;->c:Lexh;

    invoke-static {v1}, Lexn;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lexn;->d:Lexi;

    invoke-static {v1}, Lexn;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lexn;->b:Lexh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lexn;->c:Lexh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lexn;->d:Lexi;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 76
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lexn;->d:Lexi;

    .line 76
    invoke-virtual {v0}, Lexi;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
