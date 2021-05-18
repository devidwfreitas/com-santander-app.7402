.class public Lbvb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lbvb;->a:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lbvb;->b:Ljava/lang/String;

    .line 68
    iput p3, p0, Lbvb;->c:I

    .line 69
    iput p4, p0, Lbvb;->d:I

    .line 70
    return-void
.end method
