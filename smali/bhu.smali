.class public Lbhu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lbhu;->a:I

    .line 76
    iput p2, p0, Lbhu;->b:I

    .line 77
    return-void
.end method

.method public synthetic constructor <init>(IILbhs;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lbhu;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lbhu;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lbhu;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
