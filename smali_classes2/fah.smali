.class public final Lfah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Lfah;->a:I

    .line 225
    iput p2, p0, Lfah;->b:I

    .line 226
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lfah;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lfah;->b:I

    return v0
.end method
