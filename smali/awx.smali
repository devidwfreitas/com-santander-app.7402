.class Lawx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxc;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lawu;


# direct methods
.method constructor <init>(Lawu;II)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lawx;->c:Lawu;

    iput p2, p0, Lawx;->a:I

    iput p3, p0, Lawx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lawx;->c:Lawu;

    iget v1, p0, Lawx;->a:I

    iget v2, p0, Lawx;->b:I

    invoke-virtual {v0, v1, v2}, Lawu;->a(II)V

    .line 397
    return-void
.end method
