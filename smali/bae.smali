.class public Lbae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbdj;",
            ">;"
        }
    .end annotation
.end field

.field private final b:C

.field private final c:I

.field private final d:D

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbdj;",
            ">;CID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lbae;->a:Ljava/util/List;

    .line 33
    iput-char p2, p0, Lbae;->b:C

    .line 34
    iput p3, p0, Lbae;->c:I

    .line 35
    iput-wide p4, p0, Lbae;->d:D

    .line 36
    iput-object p6, p0, Lbae;->e:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lbae;->f:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(CLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 16
    .line 17
    add-int/lit8 v0, p0, 0x0

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbdj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lbae;->a:Ljava/util/List;

    return-object v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lbae;->c:I

    return v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lbae;->d:D

    return-wide v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbae;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    iget-char v0, p0, Lbae;->b:C

    iget-object v1, p0, Lbae;->f:Ljava/lang/String;

    iget-object v2, p0, Lbae;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbae;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
