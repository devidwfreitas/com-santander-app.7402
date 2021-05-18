.class public final Ldrh;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field public static final e:[I

.field public static final f:[J

.field public static final g:[F

.field public static final h:[D

.field public static final i:[Z

.field public static final j:[Ljava/lang/String;

.field public static final k:[[B

.field public static final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v4}, Ldrh;->a(II)I

    move-result v0

    sput v0, Ldrh;->a:I

    const/4 v0, 0x4

    invoke-static {v2, v0}, Ldrh;->a(II)I

    move-result v0

    sput v0, Ldrh;->b:I

    invoke-static {v3, v1}, Ldrh;->a(II)I

    move-result v0

    sput v0, Ldrh;->c:I

    invoke-static {v4, v3}, Ldrh;->a(II)I

    move-result v0

    sput v0, Ldrh;->d:I

    new-array v0, v1, [I

    sput-object v0, Ldrh;->e:[I

    new-array v0, v1, [J

    sput-object v0, Ldrh;->f:[J

    new-array v0, v1, [F

    sput-object v0, Ldrh;->g:[F

    new-array v0, v1, [D

    sput-object v0, Ldrh;->h:[D

    new-array v0, v1, [Z

    sput-object v0, Ldrh;->i:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ldrh;->j:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Ldrh;->k:[[B

    new-array v0, v1, [B

    sput-object v0, Ldrh;->l:[B

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final a(Ldqv;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ldqv;->t()I

    move-result v1

    invoke-virtual {p0, p1}, Ldqv;->b(I)Z

    :goto_0
    invoke-virtual {p0}, Ldqv;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Ldqv;->b(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ldqv;->f(I)V

    return v0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
