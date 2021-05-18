.class Lbsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:Lbhl;

.field final synthetic b:Lbsp;


# direct methods
.method constructor <init>(Lbsp;Lbhl;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lbsq;->b:Lbsp;

    iput-object p2, p0, Lbsq;->a:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lbsq;->b:Lbsp;

    iget-object v1, p0, Lbsq;->a:Lbhl;

    invoke-virtual {v0, p1, p2, v1}, Lbsp;->a(ILandroid/content/Intent;Lbhl;)Z

    move-result v0

    return v0
.end method
