.class Laww;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxc;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lawu;


# direct methods
.method constructor <init>(Lawu;Z)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Laww;->b:Lawu;

    iput-boolean p2, p0, Laww;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lawr;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Laww;->b:Lawu;

    iget-boolean v1, p0, Laww;->a:Z

    invoke-static {v0, v1}, Lawu;->a(Lawu;Z)V

    .line 381
    return-void
.end method
