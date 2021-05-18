.class Laxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxc;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lawu;


# direct methods
.method constructor <init>(Lawu;I)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Laxa;->b:Lawu;

    iput p2, p0, Laxa;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Laxa;->b:Lawu;

    iget v1, p0, Laxa;->a:I

    invoke-virtual {v0, v1}, Lawu;->b(I)V

    .line 461
    return-void
.end method
