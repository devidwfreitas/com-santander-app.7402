.class public Lat;
.super Lcp;
.source "SourceFile"


# static fields
.field private static final j:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcp;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lat;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcp;-><init>(Lcp;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x40

    return v0
.end method

.method public b([BI)I
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lat;->d()V

    .line 52
    iget-wide v0, p0, Lat;->a:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lat;->a(J[BI)V

    .line 53
    iget-wide v0, p0, Lat;->b:J

    add-int/lit8 v2, p2, 0x8

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 54
    iget-wide v0, p0, Lat;->c:J

    add-int/lit8 v2, p2, 0x10

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 55
    iget-wide v0, p0, Lat;->d:J

    add-int/lit8 v2, p2, 0x18

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 56
    iget-wide v0, p0, Lat;->e:J

    add-int/lit8 v2, p2, 0x20

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 57
    iget-wide v0, p0, Lat;->f:J

    add-int/lit8 v2, p2, 0x28

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 58
    iget-wide v0, p0, Lat;->g:J

    add-int/lit8 v2, p2, 0x30

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 59
    iget-wide v0, p0, Lat;->h:J

    add-int/lit8 v2, p2, 0x38

    invoke-virtual {p0, v0, v1, p1, v2}, Lat;->a(J[BI)V

    .line 61
    invoke-virtual {p0}, Lat;->c()V

    .line 63
    const/16 v0, 0x40

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcp;->c()V

    .line 77
    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lat;->a:J

    .line 78
    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lat;->b:J

    .line 79
    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lat;->c:J

    .line 80
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lat;->d:J

    .line 81
    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lat;->e:J

    .line 82
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lat;->f:J

    .line 83
    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lat;->g:J

    .line 84
    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lat;->h:J

    .line 85
    return-void
.end method
