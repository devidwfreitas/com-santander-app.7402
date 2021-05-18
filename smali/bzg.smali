.class final Lbzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnk;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 231
    iput p1, p0, Lbzg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lbzg;->a:I

    const/4 v1, 0x0

    .line 238
    invoke-static {v1}, Lbze;->a(Lbhl;)Lbyu;

    move-result-object v1

    .line 234
    invoke-static {v0, p1, p2, v1}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    move-result v0

    return v0
.end method
