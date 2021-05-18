.class public abstract Lcld;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static r:I


# instance fields
.field s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, -0x1

    sput v0, Lcld;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget v0, Lcld;->r:I

    iput v0, p0, Lcld;->s:I

    return-void
.end method


# virtual methods
.method protected abstract b()Lcld;
.end method
